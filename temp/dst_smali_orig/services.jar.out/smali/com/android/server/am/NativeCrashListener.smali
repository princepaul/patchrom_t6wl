.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "totalRead":I
    :goto_0
    if-lez p3, :cond_0

    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    add-int v3, p2, v1

    invoke-interface {v2, p0, p1, v3, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .local v0, "n":I
    if-gtz v0, :cond_1

    const/4 v1, -0x1

    .end local v0    # "n":I
    .end local v1    # "totalRead":I
    :cond_0
    return v1

    .restart local v0    # "n":I
    .restart local v1    # "totalRead":I
    :cond_1
    sub-int/2addr p3, v0

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method static unpackInt([BI)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    aget-byte v4, p0, p1

    and-int/lit16 v0, v4, 0xff

    .local v0, "b0":I
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .local v1, "b1":I
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    .local v2, "b2":I
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .local v3, "b3":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/16 v11, 0x1000

    new-array v0, v11, [B

    .local v0, "buf":[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0x1000

    invoke-direct {v5, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v5, "os":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v11, 0x1388

    :try_start_0
    invoke-static {v11, v12}, Llibcore/io/StructTimeval;->fromMillis(J)Llibcore/io/StructTimeval;

    move-result-object v10

    .local v10, "timeout":Llibcore/io/StructTimeval;
    sget-object v11, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v12, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v13, Llibcore/io/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v11, p1, v12, v13, v10}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V

    sget-object v11, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v12, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v13, Llibcore/io/OsConstants;->SO_SNDTIMEO:I

    invoke-interface {v11, p1, v12, v13, v10}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {p1, v0, v11, v12}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    .local v3, "headerBytes":I
    const/16 v11, 0x8

    if-eq v3, v11, :cond_1

    const-string v11, "NativeCrashListener"

    const-string v12, "Unable to read from debuggerd"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "headerBytes":I
    .end local v10    # "timeout":Llibcore/io/StructTimeval;
    :cond_0
    :goto_0
    return-void

    .restart local v3    # "headerBytes":I
    .restart local v10    # "timeout":Llibcore/io/StructTimeval;
    :cond_1
    const/4 v11, 0x0

    invoke-static {v0, v11}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v6

    .local v6, "pid":I
    const/4 v11, 0x4

    invoke-static {v0, v11}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v9

    .local v9, "signal":I
    const/4 v4, 0x1

    .local v4, "isNeedToReport":Z
    if-gtz v6, :cond_2

    const-string v11, "NativeCrashListener"

    const-string v12, "Bogus pid!"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_2
    iget-object v11, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v11, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v11, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .local v7, "pr":Lcom/android/server/am/ProcessRecord;
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    if-nez v7, :cond_3

    :try_start_2
    const-string v11, "NativeCrashListener"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_3
    if-eqz v4, :cond_4

    iget-boolean v11, v7, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v11, :cond_4

    const/4 v4, 0x0

    :cond_4
    if-eqz v4, :cond_5

    sget v11, Llibcore/io/OsConstants;->SIGABRT:I

    if-ne v9, v11, :cond_5

    const-string v11, "NativeCrashListener"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping report for signal="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", app="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_5
    sget-object v11, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v12, 0x0

    array-length v13, v0

    invoke-interface {v11, p1, v0, v12, v13}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .local v1, "bytes":I
    if-lez v1, :cond_7

    add-int/lit8 v11, v1, -0x1

    aget-byte v11, v0, v11

    if-nez v11, :cond_6

    const/4 v11, 0x0

    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v5, v0, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_1
    if-eqz v4, :cond_0

    iget-object v12, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v11, 0x1

    :try_start_3
    iput-boolean v11, v7, Lcom/android/server/am/ProcessRecord;->crashing:Z

    const/4 v11, 0x1

    iput-boolean v11, v7, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v8, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .local v8, "reportString":Ljava/lang/String;
    new-instance v11, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v11, p0, v7, v9, v8}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .end local v1    # "bytes":I
    .end local v3    # "headerBytes":I
    .end local v4    # "isNeedToReport":Z
    .end local v6    # "pid":I
    .end local v7    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "reportString":Ljava/lang/String;
    .end local v9    # "signal":I
    .end local v10    # "timeout":Llibcore/io/StructTimeval;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "NativeCrashListener"

    const-string v12, "Exception dealing with report"

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "headerBytes":I
    .restart local v4    # "isNeedToReport":Z
    .restart local v6    # "pid":I
    .restart local v9    # "signal":I
    .restart local v10    # "timeout":Llibcore/io/StructTimeval;
    :catchall_0
    move-exception v11

    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v11

    .restart local v1    # "bytes":I
    .restart local v7    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {v5, v0, v11, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_7
    if-gtz v1, :cond_5

    goto :goto_1

    :catchall_1
    move-exception v11

    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    new-array v1, v10, [B

    .local v1, "ackSignal":[B
    new-instance v9, Ljava/io/File;

    const-string v10, "/data/system/ndebugsocket"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, "socketFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_0
    :try_start_0
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Llibcore/io/OsConstants;->AF_UNIX:I

    sget v12, Llibcore/io/OsConstants;->SOCK_STREAM:I

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v7

    .local v7, "serverFd":Ljava/io/FileDescriptor;
    new-instance v8, Ljava/net/InetUnixAddress;

    const-string v10, "/data/system/ndebugsocket"

    invoke-direct {v8, v10}, Ljava/net/InetUnixAddress;-><init>(Ljava/lang/String;)V

    .local v8, "sockAddr":Ljava/net/InetUnixAddress;
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v11, 0x0

    invoke-interface {v10, v7, v8, v11}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v11, 0x1

    invoke-interface {v10, v7, v11}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V

    :cond_1
    :goto_0
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5}, Ljava/net/InetSocketAddress;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .local v5, "peer":Ljava/net/InetSocketAddress;
    const/4 v6, 0x0

    .local v6, "peerFd":Ljava/io/FileDescriptor;
    :try_start_1
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v10, v7, v5}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v12, Llibcore/io/OsConstants;->SO_PEERCRED:I

    invoke-interface {v10, v6, v11, v12}, Llibcore/io/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Llibcore/io/StructUcred;

    move-result-object v2

    .local v2, "credentials":Llibcore/io/StructUcred;
    iget v10, v2, Llibcore/io/StructUcred;->uid:I

    if-nez v10, :cond_2

    invoke-virtual {p0, v6}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "credentials":Llibcore/io/StructUcred;
    :cond_2
    if-eqz v6, :cond_1

    :try_start_2
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-interface {v10, v6, v1, v11, v12}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :goto_1
    :try_start_3
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v10, v6}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Llibcore/io/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_0
    move-exception v10

    goto :goto_0

    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v10, "NativeCrashListener"

    const-string v11, "Error handling connection"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v10, v3, Llibcore/io/ErrnoException;

    if-eqz v10, :cond_3

    move-object v0, v3

    check-cast v0, Llibcore/io/ErrnoException;

    move-object v4, v0

    .local v4, "err":Llibcore/io/ErrnoException;
    iget v10, v4, Llibcore/io/ErrnoException;->errno:I

    sget v11, Llibcore/io/OsConstants;->EMFILE:I

    if-ne v10, v11, :cond_3

    const-string v10, "NativeCrashListener"

    const-string v11, "Got EMFILE, wait 30 minutes to retry"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v10, 0x1b7740

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v4    # "err":Llibcore/io/ErrnoException;
    :cond_3
    if-eqz v6, :cond_1

    :try_start_5
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-interface {v10, v6, v1, v11, v12}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :goto_2
    :try_start_6
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v10, v6}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Llibcore/io/ErrnoException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_2
    move-exception v10

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eqz v6, :cond_4

    :try_start_7
    sget-object v11, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-interface {v11, v6, v1, v12, v13}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :goto_3
    :try_start_8
    sget-object v11, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v11, v6}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Llibcore/io/ErrnoException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_4
    :goto_4
    :try_start_9
    throw v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .end local v5    # "peer":Ljava/net/InetSocketAddress;
    .end local v6    # "peerFd":Ljava/io/FileDescriptor;
    .end local v7    # "serverFd":Ljava/io/FileDescriptor;
    .end local v8    # "sockAddr":Ljava/net/InetUnixAddress;
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v10, "NativeCrashListener"

    const-string v11, "Unable to init native debug socket!"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "peer":Ljava/net/InetSocketAddress;
    .restart local v6    # "peerFd":Ljava/io/FileDescriptor;
    .restart local v7    # "serverFd":Ljava/io/FileDescriptor;
    .restart local v8    # "sockAddr":Ljava/net/InetUnixAddress;
    :catch_4
    move-exception v11

    goto :goto_4

    :catch_5
    move-exception v11

    goto :goto_3

    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v10

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v10

    goto :goto_1
.end method
