.class final Lcom/android/server/pm/PackageManagerService$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->preParsing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    .local v25, "startTime":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v12

    .local v12, "CPUcores":I
    const-string v3, "debug.prefetchthread"

    invoke-static {v3, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .local v7, "threads":I
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "app"

    invoke-direct {v8, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v8, "sysAppDir":Ljava/io/File;
    new-instance v15, Lcom/android/server/pm/PackageManagerService$1$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/pm/PackageManagerService$1$1;-><init>(Lcom/android/server/pm/PackageManagerService$1;)V

    .local v15, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v8, v15}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v9

    .local v9, "sysAppList":[Ljava/lang/String;
    if-eqz v9, :cond_1

    array-length v6, v9

    .local v6, "SIZE":I
    :goto_0
    if-gtz v6, :cond_0

    :cond_0
    const-string v3, "debug.separate_processes"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .local v24, "separateProcesses":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "_mDefParseFlags":I
    if-eqz v24, :cond_3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "*"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v13, 0x8

    const/4 v10, 0x0

    .local v10, "_mSeparateProcesses":[Ljava/lang/String;
    :goto_1
    or-int/lit8 v11, v13, 0x41

    .local v11, "parseFlags":I
    # getter for: Lcom/android/server/pm/PackageManagerService;->mpreParseThreadNum:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v3, 0x1

    if-le v7, v3, :cond_4

    const/16 v17, 0x1

    .local v17, "index":I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v7, :cond_4

    move/from16 v5, v17

    .local v5, "tindex":I
    new-instance v23, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$1$2;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/server/pm/PackageManagerService$1$2;-><init>(Lcom/android/server/pm/PackageManagerService$1;IIILjava/io/File;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v23, "secondary":Ljava/lang/Thread;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preparse_thread_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 v3, 0xa

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .end local v5    # "tindex":I
    .end local v6    # "SIZE":I
    .end local v10    # "_mSeparateProcesses":[Ljava/lang/String;
    .end local v11    # "parseFlags":I
    .end local v13    # "_mDefParseFlags":I
    .end local v17    # "index":I
    .end local v23    # "secondary":Ljava/lang/Thread;
    .end local v24    # "separateProcesses":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .restart local v6    # "SIZE":I
    .restart local v13    # "_mDefParseFlags":I
    .restart local v24    # "separateProcesses":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    const-string v3, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_mSeparateProcesses":[Ljava/lang/String;
    goto :goto_1

    .end local v10    # "_mSeparateProcesses":[Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    const/4 v10, 0x0

    .restart local v10    # "_mSeparateProcesses":[Ljava/lang/String;
    goto :goto_1

    .restart local v11    # "parseFlags":I
    :cond_4
    const/16 v22, 0x0

    .local v22, "scanPath":Ljava/lang/String;
    new-instance v27, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "framework"

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v27, "sysFrameDir":Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v28

    .local v28, "sysFrameList":[Ljava/lang/String;
    if-eqz v28, :cond_6

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    .local v29, "sysFrame_SIZE":I
    :goto_3
    const/16 v16, 0x0

    .local v16, "i":I
    if-lez v29, :cond_8

    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    aget-object v3, v28, v16

    # invokes: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$500(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .end local v16    # "i":I
    .end local v29    # "sysFrame_SIZE":I
    :cond_6
    const/16 v29, 0x0

    goto :goto_3

    .restart local v16    # "i":I
    .restart local v29    # "sysFrame_SIZE":I
    :cond_7
    :try_start_0
    new-instance v21, Ljava/io/File;

    aget-object v3, v28, v16

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v21, "scanFile":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    new-instance v19, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .local v19, "pp":Landroid/content/pm/PackageParser;
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    const/4 v3, 0x0

    or-int/lit8 v4, v11, 0x4

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .local v18, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v18, :cond_5

    # getter for: Lcom/android/server/pm/PackageManagerService;->mCachedParsePkgs:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v19    # "pp":Landroid/content/pm/PackageParser;
    .end local v21    # "scanFile":Ljava/io/File;
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    # setter for: Lcom/android/server/pm/PackageManagerService;->isError:Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$402(Z)Z

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Thread#primary failed to preParsing package :"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v14    # "e":Ljava/lang/Exception;
    :cond_8
    const/16 v16, 0x0

    add-int/lit8 v16, v7, -0x1

    :goto_6
    move/from16 v0, v16

    if-ge v0, v6, :cond_a

    :try_start_1
    new-instance v21, Ljava/io/File;

    aget-object v3, v9, v16

    move-object/from16 v0, v21

    invoke-direct {v0, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v21    # "scanFile":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    new-instance v19, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .restart local v19    # "pp":Landroid/content/pm/PackageParser;
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    const/4 v3, 0x0

    or-int/lit8 v4, v11, 0x4

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .restart local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v18, :cond_9

    :goto_7
    add-int v16, v16, v7

    goto :goto_6

    :cond_9
    # getter for: Lcom/android/server/pm/PackageManagerService;->mCachedParsePkgs:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v19    # "pp":Landroid/content/pm/PackageParser;
    .end local v21    # "scanFile":Ljava/io/File;
    :catch_1
    move-exception v14

    .restart local v14    # "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    # setter for: Lcom/android/server/pm/PackageManagerService;->isError:Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$402(Z)Z

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Thread#primary failed to preParsing package :"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v14    # "e":Ljava/lang/Exception;
    :cond_a
    # getter for: Lcom/android/server/pm/PackageManagerService;->mpreParseThreadNum:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    const/16 v20, 0x64

    .local v20, "retry":I
    :goto_8
    # getter for: Lcom/android/server/pm/PackageManagerService;->mpreParseThreadNum:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_c

    if-lez v20, :cond_c

    rem-int/lit8 v3, v20, 0x4

    if-nez v3, :cond_b

    sget-boolean v3, Landroid/util/HtcLogChecker;->DEBUG_FLAG:Z

    if-eqz v3, :cond_b

    const-string v3, "PackageManager"

    const-string v4, "Waiting preparse thread finish 50ms"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    # getter for: Lcom/android/server/pm/PackageManagerService;->isError:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$400()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_c
    sget-boolean v3, Landroid/util/HtcLogChecker;->DEBUG_FLAG:Z

    if-eqz v3, :cond_d

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "preParsing package time: "

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v25

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    :cond_e
    const-wide/16 v3, 0x32

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v20, v20, -0x1

    goto :goto_8

    :catch_2
    move-exception v14

    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method
