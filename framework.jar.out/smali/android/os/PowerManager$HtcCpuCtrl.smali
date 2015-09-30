.class public final Landroid/os/PowerManager$HtcCpuCtrl;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HtcCpuCtrl"
.end annotation


# instance fields
.field mAcquirerPost:Ljava/lang/Runnable;

.field private mCount:I

.field private final mFlags:I

.field private mHeld:Z

.field private mLevel:I

.field private final mPackageName:Ljava/lang/String;

.field private mRefCounted:Z

.field private mReleaseFlag:I

.field private final mReleaser:Ljava/lang/Runnable;

.field mReleaserPost:Ljava/lang/Runnable;

.field private final mTag:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field private mWorkSource:Landroid/os/WorkSource;

.field mWorkSourcePost:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "flags"    # I
    .param p3, "level"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1031
    iput-object p1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mRefCounted:Z

    .line 993
    new-instance v0, Landroid/os/PowerManager$HtcCpuCtrl$1;

    invoke-direct {v0, p0}, Landroid/os/PowerManager$HtcCpuCtrl$1;-><init>(Landroid/os/PowerManager$HtcCpuCtrl;)V

    iput-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaser:Ljava/lang/Runnable;

    .line 1010
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaseFlag:I

    .line 1012
    new-instance v0, Landroid/os/PowerManager$HtcCpuCtrl$2;

    invoke-direct {v0, p0}, Landroid/os/PowerManager$HtcCpuCtrl$2;-><init>(Landroid/os/PowerManager$HtcCpuCtrl;)V

    iput-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mAcquirerPost:Ljava/lang/Runnable;

    .line 1018
    new-instance v0, Landroid/os/PowerManager$HtcCpuCtrl$3;

    invoke-direct {v0, p0}, Landroid/os/PowerManager$HtcCpuCtrl$3;-><init>(Landroid/os/PowerManager$HtcCpuCtrl;)V

    iput-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaserPost:Ljava/lang/Runnable;

    .line 1024
    new-instance v0, Landroid/os/PowerManager$HtcCpuCtrl$4;

    invoke-direct {v0, p0}, Landroid/os/PowerManager$HtcCpuCtrl$4;-><init>(Landroid/os/PowerManager$HtcCpuCtrl;)V

    iput-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mWorkSourcePost:Ljava/lang/Runnable;

    .line 1032
    iput p2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mFlags:I

    .line 1033
    iput-object p4, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mTag:Ljava/lang/String;

    .line 1034
    iput-object p5, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mPackageName:Ljava/lang/String;

    .line 1035
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    .line 1036
    iput p3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mLevel:I

    .line 1037
    return-void
.end method

.method static synthetic access$100(Landroid/os/PowerManager$HtcCpuCtrl;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Landroid/os/PowerManager$HtcCpuCtrl;

    .prologue
    .line 981
    iget-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/PowerManager$HtcCpuCtrl;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/PowerManager$HtcCpuCtrl;

    .prologue
    .line 981
    invoke-direct {p0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquirerPost()V

    return-void
.end method

.method static synthetic access$300(Landroid/os/PowerManager$HtcCpuCtrl;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/PowerManager$HtcCpuCtrl;

    .prologue
    .line 981
    invoke-direct {p0}, Landroid/os/PowerManager$HtcCpuCtrl;->releaserPost()V

    return-void
.end method

.method static synthetic access$400(Landroid/os/PowerManager$HtcCpuCtrl;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/PowerManager$HtcCpuCtrl;

    .prologue
    .line 981
    invoke-direct {p0}, Landroid/os/PowerManager$HtcCpuCtrl;->workSourcePost()V

    return-void
.end method

.method private acquireLevelLocked(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 1067
    iget-boolean v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mRefCounted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mCount:I

    if-nez v0, :cond_3

    .line 1068
    :cond_0
    iget-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1071
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    const-string v0, "PowerManager"

    const-string v1, "acquireLevelLocked post start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_1
    const-string v0, "acquire"

    # invokes: Landroid/os/PowerManager;->checkHandlerThread(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/os/PowerManager;->access$600(Ljava/lang/String;)V

    .line 1076
    # getter for: Landroid/os/PowerManager;->mPostHandler:Landroid/os/Handler;
    invoke-static {}, Landroid/os/PowerManager;->access$700()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mAcquirerPost:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1078
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1079
    const-string v0, "PowerManager"

    const-string v1, "acquireLevelLocked post end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mHeld:Z

    .line 1089
    :cond_3
    return-void
.end method

.method private acquirerPost()V
    .locals 9

    .prologue
    .line 1241
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    const-string v0, "PowerManager"

    const-string v1, "acquirerPost start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const-string v0, "PowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) , flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_0
    iget-object v8, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v8

    .line 1247
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mFlags:I

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mWorkSource:Landroid/os/WorkSource;

    iget v5, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mLevel:I

    iget-object v6, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mPackageName:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Landroid/os/IPowerManager;->acquireHtcCpuCtrl(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    :goto_0
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1252
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1253
    const-string v0, "PowerManager"

    const-string v1, "acquirerPost end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_1
    return-void

    .line 1248
    :catch_0
    move-exception v7

    .line 1249
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "PowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirerPost [RemoteException]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1251
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private releaserPost()V
    .locals 5

    .prologue
    .line 1258
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1259
    const-string v1, "PowerManager"

    const-string/jumbo v2, "releaserPost start"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    const-string v1, "PowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) , releaseflags = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaseFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_0
    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 1265
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    iget v4, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaseFlag:I

    invoke-interface {v1, v3, v4}, Landroid/os/IPowerManager;->releaseHtcCpuCtrl(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1269
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1270
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1271
    const-string v1, "PowerManager"

    const-string/jumbo v2, "releaserPost end"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_1
    return-void

    .line 1266
    :catch_0
    move-exception v0

    .line 1267
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "PowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "releaserPost [RemoteException]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1269
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private workSourcePost()V
    .locals 5

    .prologue
    .line 1276
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1277
    const-string v1, "PowerManager"

    const-string/jumbo v2, "workSourcePost start"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const-string v1, "PowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_0
    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 1282
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v3, v4}, Landroid/os/IPowerManager;->updateHtcCpuCtrlWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1287
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1288
    const-string v1, "PowerManager"

    const-string/jumbo v2, "workSourcePost end"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_1
    return-void

    .line 1283
    :catch_0
    move-exception v0

    .line 1284
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "PowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "workSourcePost [RemoteException]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1286
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public acquire()V
    .locals 3

    .prologue
    .line 1042
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    const-string v0, "PowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquire ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_0
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1048
    :try_start_0
    iget v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mLevel:I

    invoke-direct {p0, v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquireLevelLocked(I)V

    .line 1049
    monitor-exit v1

    .line 1050
    return-void

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public acquire(J)V
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    .line 1055
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    const-string v0, "PowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquire ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) , timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_0
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1061
    :try_start_0
    iget v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mLevel:I

    invoke-direct {p0, v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquireLevelLocked(I)V

    .line 1062
    iget-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1063
    monitor-exit v1

    .line 1064
    return-void

    .line 1063
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1206
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1207
    const-string v0, "PowerManager"

    const-string v1, "finalize start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_0
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1211
    :try_start_0
    iget-boolean v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mHeld:Z

    if-eqz v0, :cond_2

    .line 1212
    const-string v0, "PowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeLock finalized while still held: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1216
    const-string v0, "PowerManager"

    const-string/jumbo v2, "release post start"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaseFlag:I

    .line 1220
    const-string v0, "finalize"

    # invokes: Landroid/os/PowerManager;->checkHandlerThread(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/os/PowerManager;->access$600(Ljava/lang/String;)V

    .line 1221
    # getter for: Landroid/os/PowerManager;->mPostHandler:Landroid/os/Handler;
    invoke-static {}, Landroid/os/PowerManager;->access$700()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaserPost:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1223
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1224
    const-string v0, "PowerManager"

    const-string/jumbo v2, "release post end"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1236
    const-string v0, "PowerManager"

    const-string v1, "finalize end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_3
    return-void

    .line 1233
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isHeld()Z
    .locals 4

    .prologue
    .line 1144
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1145
    :try_start_0
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    const-string v0, "PowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHeld mHeld = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mHeld:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_0
    iget-boolean v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mHeld:Z

    monitor-exit v1

    return v0

    .line 1150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release(I)V

    .line 1104
    return-void
.end method

.method public release(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 1107
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    const-string v0, "PowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) , flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_0
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1112
    :try_start_0
    iget-boolean v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mRefCounted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mCount:I

    if-nez v0, :cond_4

    .line 1113
    :cond_1
    iget-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1114
    iget-boolean v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mHeld:Z

    if-eqz v0, :cond_4

    .line 1117
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1118
    const-string v0, "PowerManager"

    const-string/jumbo v2, "release post start"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_2
    iput p1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaseFlag:I

    .line 1122
    const-string/jumbo v0, "release"

    # invokes: Landroid/os/PowerManager;->checkHandlerThread(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/os/PowerManager;->access$600(Ljava/lang/String;)V

    .line 1123
    # getter for: Landroid/os/PowerManager;->mPostHandler:Landroid/os/Handler;
    invoke-static {}, Landroid/os/PowerManager;->access$700()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mReleaserPost:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1125
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1126
    const-string v0, "PowerManager"

    const-string/jumbo v2, "release post end"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mHeld:Z

    .line 1137
    :cond_4
    iget v0, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mCount:I

    if-gez v0, :cond_5

    .line 1138
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1141
    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 1093
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    const-string v0, "PowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReferenceCounted value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_0
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1098
    :try_start_0
    iput-boolean p1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mRefCounted:Z

    .line 1099
    monitor-exit v1

    .line 1100
    return-void

    .line 1099
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 1154
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1155
    const-string v1, "PowerManager"

    const-string/jumbo v2, "setWorkSource start"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_0
    iget-object v2, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 1159
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1160
    const/4 p1, 0x0

    .line 1164
    :cond_1
    if-nez p1, :cond_7

    .line 1165
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    .line 1166
    .local v0, "changed":Z
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mWorkSource:Landroid/os/WorkSource;

    .line 1177
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mHeld:Z

    if-eqz v1, :cond_4

    .line 1180
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1181
    const-string v1, "PowerManager"

    const-string/jumbo v3, "workSource post start"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_3
    const-string/jumbo v1, "workSource"

    # invokes: Landroid/os/PowerManager;->checkHandlerThread(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/os/PowerManager;->access$600(Ljava/lang/String;)V

    .line 1185
    # getter for: Landroid/os/PowerManager;->mPostHandler:Landroid/os/Handler;
    invoke-static {}, Landroid/os/PowerManager;->access$700()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mWorkSourcePost:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1187
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1188
    const-string v1, "PowerManager"

    const-string/jumbo v3, "workSource post end"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    # getter for: Landroid/os/PowerManager;->DEBUG_ON:Z
    invoke-static {}, Landroid/os/PowerManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1200
    const-string v1, "PowerManager"

    const-string/jumbo v2, "setWorkSource end"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_5
    return-void

    .line 1165
    .end local v0    # "changed":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 1167
    :cond_7
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mWorkSource:Landroid/os/WorkSource;

    if-nez v1, :cond_8

    .line 1168
    const/4 v0, 0x1

    .line 1169
    .restart local v0    # "changed":Z
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_1

    .line 1197
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1171
    :cond_8
    :try_start_2
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    .line 1172
    .restart local v0    # "changed":Z
    if-eqz v0, :cond_2

    .line 1173
    iget-object v1, p0, Landroid/os/PowerManager$HtcCpuCtrl;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
