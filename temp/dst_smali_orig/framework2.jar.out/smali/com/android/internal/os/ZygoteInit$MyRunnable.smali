.class Lcom/android/internal/os/ZygoteInit$MyRunnable;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyRunnable"
.end annotation


# instance fields
.field private final as:[Ljava/lang/String;

.field private end:I

.field private final runtime:Ldalvik/system/VMRuntime;

.field private start:I


# direct methods
.method constructor <init>(III[Ljava/lang/String;Ldalvik/system/VMRuntime;)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "len"    # I
    .param p4, "array"    # [Ljava/lang/String;
    .param p5, "runtime"    # Ldalvik/system/VMRuntime;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->start:I

    iput p2, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->end:I

    if-le p2, p3, :cond_0

    iput p3, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->end:I

    :cond_0
    iput-object p4, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->as:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->runtime:Ldalvik/system/VMRuntime;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .local v3, "startTime":J
    iget v1, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->start:I

    .local v1, "k":I
    :cond_0
    iget-object v6, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->as:[Ljava/lang/String;

    aget-object v2, v6, v1

    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget v6, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->end:I

    if-lt v1, v6, :cond_0

    sget-boolean v6, Landroid/util/HtcLogChecker;->DEBUG_FLAG:Z

    if-eqz v6, :cond_2

    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->end:I

    iget v9, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->start:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " classes(#2) in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-wide v6, Lcom/android/internal/os/ZygoteInit;->parallelThread:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    sput-wide v6, Lcom/android/internal/os/ZygoteInit;->parallelThread:J

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class not found for preloading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    .local v5, "t":Ljava/lang/Throwable;
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error preloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v6, v5, Ljava/lang/Error;

    if-eqz v6, :cond_3

    check-cast v5, Ljava/lang/Error;

    .end local v5    # "t":Ljava/lang/Throwable;
    throw v5

    .restart local v5    # "t":Ljava/lang/Throwable;
    :cond_3
    instance-of v6, v5, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_4

    check-cast v5, Ljava/lang/RuntimeException;

    .end local v5    # "t":Ljava/lang/Throwable;
    throw v5

    .restart local v5    # "t":Ljava/lang/Throwable;
    :cond_4
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
