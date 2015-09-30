.class Lcom/android/server/pm/HWRenderingQueryHelper;
.super Ljava/lang/Object;
.source "HWRenderingQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;,
        Lcom/android/server/pm/HWRenderingQueryHelper$TableType;,
        Lcom/android/server/pm/HWRenderingQueryHelper$DBHelper;
    }
.end annotation


# static fields
.field private static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final COLUMN_RENDERING_TYPE:Ljava/lang/String; = "rendering_type"

.field private static final DATA_DB_PATH:Ljava/lang/String; = "/data/data/com.htc.htccupd/lib/libcupdpmhwrl.so"

.field private static final DATA_DVM_LIST_PATH:Ljava/lang/String; = "/data/data/com.htc.htccupd/lib/libcupddvhwrc.so"

.field private static final DB_NAME:Ljava/lang/String; = "libpmhwrl.so"

.field private static final DVM_LIST_NAME:Ljava/lang/String; = "libdvhwrc.so"

.field private static final SELECTION_PACKAGE_NAME:Ljava/lang/String; = "package_name = ?"

.field private static final SYSTEM_DB_PATH:Ljava/lang/String; = "/system/etc/libpmhwrl.so"

.field private static final SYSTEM_DVM_LIST_PATH:Ljava/lang/String; = "/system/etc/libdvhwrc.so"

.field private static final TABLE_APP_LIST:Ljava/lang/String; = "applist"

.field private static final TAG:Ljava/lang/String; = "HWRenderingQueryHelper"

.field private static final VERSION_TOKEN:Ljava/lang/String; = "@@version="

.field private static mNewDataVersion:I

.field private static sQueryHelper:Lcom/android/server/pm/HWRenderingQueryHelper;

.field private static final sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mUsedDatabasePath:Ljava/lang/String;

.field private mUsedDvmListPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/HWRenderingQueryHelper;->sQueryHelper:Lcom/android/server/pm/HWRenderingQueryHelper;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/pm/HWRenderingQueryHelper;->mNewDataVersion:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mUsedDatabasePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mUsedDvmListPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mCtx:Landroid/content/Context;

    const-string v0, "libpmhwrl.so"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mUsedDatabasePath:Ljava/lang/String;

    const-string v0, "libdvhwrc.so"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mUsedDvmListPath:Ljava/lang/String;

    return-void
.end method

.method private applyHWRenderingList(Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/HWRenderingQueryHelper$TableType;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/HWRenderingQueryHelper$TableType;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/HWRenderingQueryHelper$TableType;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/HWRenderingQueryHelper$TableType;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/HWRenderingQueryHelper$TableType;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/HWRenderingQueryHelper;->queryHWRenderingList(Ljava/lang/String;)Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    move-result-object v4

    .local v4, "value":Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    sget-object v5, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->UnknownOrError:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    if-ne v5, v4, :cond_0

    const/4 v5, 0x0

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/HWRenderingQueryHelper$TableType;>;"
    .end local v4    # "value":Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    :goto_1
    return v5

    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/HWRenderingQueryHelper$TableType;>;"
    .restart local v4    # "value":Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/HWRenderingQueryHelper$TableType;>;"
    .end local v4    # "value":Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static getDBDataVersion()I
    .locals 1

    .prologue
    sget v0, Lcom/android/server/pm/HWRenderingQueryHelper;->mNewDataVersion:I

    return v0
.end method

.method private static getDataVersion(Landroid/database/sqlite/SQLiteOpenHelper;Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;)I
    .locals 3
    .param p0, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .param p1, "pathes"    # Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;

    .prologue
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    .local v1, "dbVersion":I
    invoke-static {v1, p1}, Lcom/android/server/pm/HWRenderingQueryHelper;->getDateVersion(ILcom/android/server/pm/HWRenderingQueryHelper$DataPathes;)I

    move-result v2

    return v2
.end method

.method private static getDataVersion(Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;)I
    .locals 2
    .param p0, "pathes"    # Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;

    .prologue
    iget-object v1, p0, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;->mDbFile:Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/pm/HWRenderingQueryHelper;->getDbVersion(Ljava/io/File;)I

    move-result v0

    .local v0, "dbVersion":I
    invoke-static {v0, p0}, Lcom/android/server/pm/HWRenderingQueryHelper;->getDateVersion(ILcom/android/server/pm/HWRenderingQueryHelper$DataPathes;)I

    move-result v1

    return v1
.end method

.method private static getDateVersion(ILcom/android/server/pm/HWRenderingQueryHelper$DataPathes;)I
    .locals 4
    .param p0, "dbVersion"    # I
    .param p1, "pathes"    # Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;

    .prologue
    if-gez p0, :cond_1

    .end local p0    # "dbVersion":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "dbVersion":I
    :cond_1
    iget-object v1, p1, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;->mDvmListFile:Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/pm/HWRenderingQueryHelper;->getTextDataVersion(Ljava/io/File;)I

    move-result v0

    .local v0, "dvmListVersion":I
    if-eq p0, v0, :cond_0

    const-string v1, "HWRenderingQueryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ver inconsistency, applist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dvmList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    goto :goto_0
.end method

.method private static getDbVersion(Ljava/io/File;)I
    .locals 7
    .param p0, "dbFile"    # Ljava/io/File;

    .prologue
    const/4 v3, -0x1

    .local v3, "ret":I
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-static {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    :goto_1
    move v4, v3

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v4, "HWRenderingQueryHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not open database :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v4
.end method

.method public static declared-synchronized getHelper(Landroid/content/Context;)Lcom/android/server/pm/HWRenderingQueryHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/server/pm/HWRenderingQueryHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/pm/HWRenderingQueryHelper;->sQueryHelper:Lcom/android/server/pm/HWRenderingQueryHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/pm/HWRenderingQueryHelper;

    invoke-direct {v0, p0}, Lcom/android/server/pm/HWRenderingQueryHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/pm/HWRenderingQueryHelper;->sQueryHelper:Lcom/android/server/pm/HWRenderingQueryHelper;

    :cond_0
    sget-object v0, Lcom/android/server/pm/HWRenderingQueryHelper;->sQueryHelper:Lcom/android/server/pm/HWRenderingQueryHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getTextDataVersion(Ljava/io/File;)I
    .locals 13
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, -0x1

    .local v6, "ver":I
    const/4 v3, 0x0

    .local v3, "fr":Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "fr":Ljava/io/FileReader;
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .local v8, "verStringLine":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_0

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v5, v9, 0x1

    .local v5, "index":I
    const-string v9, "@@version="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_0

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "verString":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    .end local v5    # "index":I
    .end local v7    # "verString":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_0
    if-gez v6, :cond_1

    const-string v9, "HWRenderingQueryHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can not parse the version number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    move v9, v6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v8    # "verStringLine":Ljava/lang/String;
    :goto_1
    return v9

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v9, "HWRenderingQueryHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can not get text data version while opening, path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v9, -0x1

    goto :goto_1

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    .restart local v8    # "verStringLine":Ljava/lang/String;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v9, "HWRenderingQueryHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can not close file while getting text data version, path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v9, "HWRenderingQueryHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can not get text data version while reading, path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v9, "HWRenderingQueryHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can not close file while getting text data version, path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v9

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "HWRenderingQueryHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can not close file while getting text data version, path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :goto_5
    throw v9

    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "HWRenderingQueryHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can not close file while getting text data version, path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private initHWRenderingDatabaseLock()Z
    .locals 12

    .prologue
    const/4 v4, 0x0

    .local v4, "ret":Z
    new-instance v5, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;

    const-string v9, "/system/etc/libpmhwrl.so"

    const-string v10, "/system/etc/libdvhwrc.so"

    invoke-direct {v5, v9, v10}, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v5, "systemDataPathes":Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;
    new-instance v0, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;

    const-string v9, "/data/data/com.htc.htccupd/lib/libcupdpmhwrl.so"

    const-string v10, "/data/data/com.htc.htccupd/lib/libcupddvhwrc.so"

    invoke-direct {v0, v9, v10}, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "dataDataPathes":Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;
    new-instance v7, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;

    iget-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mUsedDatabasePath:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mUsedDvmListPath:Ljava/lang/String;

    invoke-direct {v7, v9, v10}, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v7, "usedDataPathes":Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;
    invoke-static {v5}, Lcom/android/server/pm/HWRenderingQueryHelper;->getDataVersion(Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;)I

    move-result v6

    .local v6, "systemDataVersion":I
    invoke-static {v0}, Lcom/android/server/pm/HWRenderingQueryHelper;->getDataVersion(Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;)I

    move-result v1

    .local v1, "dataDataVersion":I
    iget-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {v9, v7}, Lcom/android/server/pm/HWRenderingQueryHelper;->getDataVersion(Landroid/database/sqlite/SQLiteOpenHelper;Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;)I

    move-result v8

    .local v8, "usedDataVersion":I
    :goto_0
    move v2, v8

    .local v2, "newDataVersion":I
    const/4 v3, 0x0

    .local v3, "pathesToCopy":Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;
    if-le v6, v2, :cond_0

    move-object v3, v5

    move v2, v6

    :cond_0
    if-le v1, v2, :cond_1

    move-object v3, v0

    move v2, v1

    :cond_1
    if-eqz v3, :cond_5

    iget-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_2
    invoke-virtual {v3, v7}, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;->updateDataToPath(Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_3

    iget-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v9, :cond_3

    new-instance v9, Lcom/android/server/pm/HWRenderingQueryHelper$DBHelper;

    iget-object v10, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mCtx:Landroid/content/Context;

    const-string v11, "libpmhwrl.so"

    invoke-direct {v9, v10, v11, v2}, Lcom/android/server/pm/HWRenderingQueryHelper$DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    iget-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_3
    sput v2, Lcom/android/server/pm/HWRenderingQueryHelper;->mNewDataVersion:I

    return v4

    .end local v2    # "newDataVersion":I
    .end local v3    # "pathesToCopy":Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;
    .end local v8    # "usedDataVersion":I
    :cond_4
    invoke-static {v7}, Lcom/android/server/pm/HWRenderingQueryHelper;->getDataVersion(Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;)I

    move-result v8

    goto :goto_0

    .restart local v2    # "newDataVersion":I
    .restart local v3    # "pathesToCopy":Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;
    .restart local v8    # "usedDataVersion":I
    :cond_5
    if-ltz v2, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const-string v9, "HWRenderingQueryHelper"

    const-string v10, "No available data is found!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static versionNumberToVersion(I)Ljava/lang/String;
    .locals 2
    .param p0, "ver"    # I

    .prologue
    if-gez p0, :cond_0

    const-string v0, "NA"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xffff

    and-int/2addr v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method initData()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    sget-object v1, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/HWRenderingQueryHelper;->initHWRenderingDatabaseLock()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    sget-object v1, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v0

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public queryAllHWRenderingList(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/HWRenderingQueryHelper$TableType;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/HWRenderingQueryHelper$TableType;>;"
    const/4 v1, 0x0

    .local v1, "ret":Z
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "map can not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    sget-object v2, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v2, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/HWRenderingQueryHelper;->applyHWRenderingList(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sget-object v2, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_1
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v2, "HWRenderingQueryHelper"

    const-string v3, "Fail in queryAllIfShouldEnable()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v2, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method public queryHWRenderingList(Ljava/lang/String;)Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "packageName can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    sget-object v11, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->UnknownOrError:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    .local v11, "result":Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v1, :cond_1

    const-string v1, "HWRenderingQueryHelper"

    const-string v2, "DB helper is null !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v1, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v12, v11

    .end local v11    # "result":Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    .local v12, "result":Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    :goto_0
    return-object v12

    .end local v12    # "result":Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    .restart local v11    # "result":Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "applist"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "rendering_type"

    aput-object v4, v2, v3

    const-string v3, "package_name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .local v8, "c":Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_2

    sget-object v11, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->WhiteList:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object v1, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_2
    move-object v12, v11

    .end local v11    # "result":Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    .restart local v12    # "result":Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    goto :goto_0

    .end local v12    # "result":Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v11    # "result":Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    :cond_2
    :try_start_4
    sget-object v11, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->BlackList:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    goto :goto_1

    :cond_3
    sget-object v11, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->None:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .local v9, "de":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_6
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v9    # "de":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_1
    move-exception v1

    sget-object v2, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1

    :catch_1
    move-exception v10

    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_7
    const-string v1, "HWRenderingQueryHelper"

    const-string v2, "Fail in queryHWRenderingList"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    sget-object v1, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2
.end method
