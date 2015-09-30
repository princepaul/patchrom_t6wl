.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x3

.field static final CACHED_APP_MAX_ADJ:I = 0xf

.field static final CACHED_APP_MIN_ADJ:I = 0x9

.field static final CONTENT_APP_IDLE_OFFSET:J = 0x3a98L

.field static final EMPTY_APP_IDLE_OFFSET:J = 0x1d4c0L

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field static final HOME_APP_ADJ:I = 0x6

.field static MAX_CACHED_APPS:I = 0x0

.field private static final MAX_EMPTY_APPS:I

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x11

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static final SYSTEM_ADJ:I = -0x10

.field static final TRIM_CACHED_APPS:I

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_EMPTY_APPS:I

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final UNKNOWN_ADJ:I = 0x10

.field static final VISIBLE_APP_ADJ:I = 0x1

.field static sCpuMaxFreq:J

.field private static final sFirstAwakePssTimes:[J

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J

.field static sTotalRamSize:I


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[J

.field private final mOomMinFreeHigh:[J

.field private final mOomMinFreeLow:[J

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 128
    const/16 v0, 0x18

    sput v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 130
    invoke-static {}, Lcom/android/server/am/ProcessList;->getMaxHiddenAppsCount()I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 133
    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/ProcessList;->sTotalRamSize:I

    .line 134
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/ProcessList;->sCpuMaxFreq:J

    .line 215
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->computeEmptyProcessLimit(I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 219
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 223
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    sget v1, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 520
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 537
    new-array v0, v2, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 554
    new-array v0, v2, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    return-void

    .line 520
    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 537
    :array_1
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    .line 554
    :array_2
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x6

    const/4 v5, 0x0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 248
    new-array v1, v2, [J

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    .line 254
    new-array v1, v2, [J

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    .line 259
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    .line 268
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 269
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 270
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 271
    invoke-direct {p0, v5, v5, v5}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 272
    return-void

    .line 242
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data

    .line 248
    :array_1
    .array-data 8
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 254
    :array_2
    .array-data 8
        0xc000
        0xf000
        0x12000
        0x15000
        0x18000
        0x1e000
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .prologue
    .line 476
    const/4 v1, 0x0

    .local v1, "j":I
    const/16 v0, 0xa

    .local v0, "fact":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 477
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 478
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 482
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .prologue
    .line 381
    if-ne p2, p3, :cond_1

    .line 382
    if-nez p1, :cond_0

    .line 385
    .end local p0    # "prefix":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 383
    .restart local p0    # "prefix":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 385
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1
    .param p0, "totalProcessLimit"    # I

    .prologue
    .line 377
    mul-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static computeNextPssTime(IZZJ)J
    .locals 3
    .param p0, "procState"    # I
    .param p1, "first"    # Z
    .param p2, "sleeping"    # Z
    .param p3, "now"    # J

    .prologue
    .line 577
    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 584
    .local v0, "table":[J
    :goto_0
    aget-wide v1, v0, p0

    add-long/2addr v1, p3

    return-wide v1

    .line 577
    .end local v0    # "table":[J
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_0
.end method

.method static getCpuMaxFreq()J
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 197
    sget-wide v2, Lcom/android/server/am/ProcessList;->sCpuMaxFreq:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 198
    new-array v0, v7, [I

    const/16 v2, 0x2020

    aput v2, v0, v6

    .line 201
    .local v0, "SINGLE_LONG_FORMAT":[I
    new-array v1, v7, [J

    .line 202
    .local v1, "longOut":[J
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v2, v0, v8, v1, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 204
    aget-wide v2, v1, v6

    sput-wide v2, Lcom/android/server/am/ProcessList;->sCpuMaxFreq:J

    .line 206
    :cond_0
    const-string v2, "ProcessList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpuinfo_max_freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/am/ProcessList;->sCpuMaxFreq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-wide v2, Lcom/android/server/am/ProcessList;->sCpuMaxFreq:J

    return-wide v2
.end method

.method static getMaxHiddenAppsCount()I
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 168
    sget v2, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 169
    .local v2, "result":I
    invoke-static {}, Lcom/android/server/am/ProcessList;->getTotalRamSize()I

    move-result v3

    .line 170
    .local v3, "totalRam":I
    const-string v4, "ProcessList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "totalRamStr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lcom/android/server/am/ProcessList;->isHighResolution()Z

    move-result v0

    .line 173
    .local v0, "bIsHighResolution":Z
    const-string v4, "ProcessList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bIsHighResolution: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v4, "customize_max_hidden_apps"

    sget v5, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 177
    .local v1, "customizeMaxHiddenApps":I
    const-string v4, "ProcessList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "customizeMaxHiddenApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget v4, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    if-eq v1, v4, :cond_1

    .line 180
    move v2, v1

    .line 192
    :cond_0
    :goto_0
    const-string v4, "ProcessList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MAX_HIDDEN_APPS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return v2

    .line 182
    :cond_1
    if-eq v3, v7, :cond_3

    const/16 v4, 0x200

    if-gt v3, v4, :cond_3

    .line 183
    if-eqz v0, :cond_2

    const/16 v2, 0xa

    :goto_1
    goto :goto_0

    :cond_2
    const/16 v2, 0xf

    goto :goto_1

    .line 187
    :cond_3
    if-eq v3, v7, :cond_0

    const/16 v4, 0x800

    if-lt v3, v4, :cond_0

    .line 188
    const/16 v2, 0x1e

    goto :goto_0
.end method

.method static getTotalRamSize()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    sget v2, Lcom/android/server/am/ProcessList;->sTotalRamSize:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_0

    .line 138
    const-string v2, "ro.product.ram"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "size":Ljava/lang/String;
    const/4 v1, 0x0

    .line 140
    .local v1, "unitIndex":I
    if-eqz v0, :cond_0

    .line 141
    const-string v2, "GB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 142
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    sput v2, Lcom/android/server/am/ProcessList;->sTotalRamSize:I

    .line 148
    :cond_0
    :goto_0
    sget v2, Lcom/android/server/am/ProcessList;->sTotalRamSize:I

    return v2

    .line 143
    :cond_1
    const-string v2, "MB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 144
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/ProcessList;->sTotalRamSize:I

    goto :goto_0
.end method

.method static isHighResolution()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 152
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 153
    .local v1, "dmg":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v4

    .line 156
    :cond_1
    invoke-virtual {v1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 157
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 158
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 160
    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    if-ge v6, v7, :cond_2

    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 161
    .local v3, "value":I
    :goto_1
    const-string v6, "ProcessList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screen resolution: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/16 v6, 0x1e0

    if-ge v3, v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 160
    .end local v3    # "value":I
    :cond_2
    iget v3, v2, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 6
    .param p0, "setAdj"    # I

    .prologue
    const/4 v5, 0x1

    const/16 v4, -0xc

    const/16 v3, -0x10

    const/16 v1, -0x11

    const/4 v2, 0x0

    .line 389
    const/16 v0, 0x9

    if-lt p0, v0, :cond_0

    .line 390
    const-string v0, "cch"

    const-string v1, "  "

    const/16 v2, 0x9

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    .line 391
    :cond_0
    const/16 v0, 0x8

    if-lt p0, v0, :cond_1

    .line 392
    const-string v0, "svcb "

    const/16 v1, 0x8

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_1
    const/4 v0, 0x7

    if-lt p0, v0, :cond_2

    .line 394
    const-string v0, "prev "

    const/4 v1, 0x7

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_2
    const/4 v0, 0x6

    if-lt p0, v0, :cond_3

    .line 396
    const-string v0, "home "

    const/4 v1, 0x6

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 397
    :cond_3
    const/4 v0, 0x5

    if-lt p0, v0, :cond_4

    .line 398
    const-string v0, "svc  "

    const/4 v1, 0x5

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_4
    const/4 v0, 0x4

    if-lt p0, v0, :cond_5

    .line 400
    const-string v0, "hvy  "

    const/4 v1, 0x4

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 401
    :cond_5
    const/4 v0, 0x3

    if-lt p0, v0, :cond_6

    .line 402
    const-string v0, "bkup "

    const/4 v1, 0x3

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_6
    const/4 v0, 0x2

    if-lt p0, v0, :cond_7

    .line 404
    const-string v0, "prcp "

    const/4 v1, 0x2

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_7
    if-lt p0, v5, :cond_8

    .line 406
    const-string v0, "vis  "

    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 407
    :cond_8
    if-ltz p0, :cond_9

    .line 408
    const-string v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 409
    :cond_9
    if-lt p0, v4, :cond_a

    .line 410
    const-string v0, "pers "

    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_a
    if-lt p0, v3, :cond_b

    .line 412
    const-string v0, "sys  "

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 413
    :cond_b
    if-lt p0, v1, :cond_c

    .line 414
    const-string v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 416
    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "curProcState"    # I

    .prologue
    .line 422
    packed-switch p0, :pswitch_data_0

    .line 469
    const-string v0, "??"

    .line 472
    .local v0, "procState":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 424
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_0
    const-string v0, "N "

    .line 425
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 427
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1
    const-string v0, "P "

    .line 428
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 430
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2
    const-string v0, "PU"

    .line 431
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 433
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3
    const-string v0, "T "

    .line 434
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 436
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4
    const-string v0, "IF"

    .line 437
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 439
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_5
    const-string v0, "IB"

    .line 440
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 442
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "BU"

    .line 443
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 445
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string v0, "HW"

    .line 446
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 448
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_8
    const-string v0, "S "

    .line 449
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 451
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "R "

    .line 452
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 454
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_a
    const-string v0, "HO"

    .line 455
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 457
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string v0, "LA"

    .line 458
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 460
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "CA"

    .line 461
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 463
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_d
    const-string v0, "Ca"

    .line 464
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 466
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_e
    const-string v0, "CE"

    .line 467
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .prologue
    .line 572
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateOomLevels(IIZ)V
    .locals 26
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    .line 288
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x12c

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x43c80000    # 400.0f

    div-float v19, v20, v21

    .line 291
    .local v19, "scaleMem":F
    const v11, 0x5dc00

    .line 292
    .local v11, "minSize":I
    const v9, 0xfa000

    .line 293
    .local v9, "maxSize":I
    mul-int v20, p1, p2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v11

    move/from16 v21, v0

    sub-float v20, v20, v21

    const v21, 0x9c400

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v18, v20, v21

    .line 300
    .local v18, "scaleDisp":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v3, "adjString":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v10, "memString":Ljava/lang/StringBuilder;
    cmpl-float v20, v19, v18

    if-lez v20, :cond_1

    move/from16 v17, v19

    .line 304
    .local v17, "scale":F
    :goto_0
    const/16 v20, 0x0

    cmpg-float v20, v17, v20

    if-gez v20, :cond_2

    const/16 v17, 0x0

    .line 306
    :cond_0
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10e0009

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 308
    .local v13, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10e0008

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 314
    .local v12, "minfree_abs":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_3

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v20, v0

    aget-wide v7, v20, v6

    .line 316
    .local v7, "low":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    move-object/from16 v20, v0

    aget-wide v4, v20, v6

    .line 317
    .local v4, "high":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v20, v0

    long-to-float v0, v7

    move/from16 v21, v0

    sub-long v22, v4, v7

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v17

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-long v0, v0

    move-wide/from16 v21, v0

    aput-wide v21, v20, v6

    .line 314
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v4    # "high":J
    .end local v6    # "i":I
    .end local v7    # "low":J
    .end local v12    # "minfree_abs":I
    .end local v13    # "minfree_adj":I
    .end local v17    # "scale":F
    :cond_1
    move/from16 v17, v18

    .line 303
    goto :goto_0

    .line 305
    .restart local v17    # "scale":F
    :cond_2
    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v20, v17, v20

    if-lez v20, :cond_0

    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_1

    .line 320
    .restart local v6    # "i":I
    .restart local v12    # "minfree_abs":I
    .restart local v13    # "minfree_adj":I
    :cond_3
    if-ltz v12, :cond_4

    .line 321
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_4

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v20, v0

    int-to-float v0, v12

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v22, v0

    aget-wide v22, v22, v6

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget-wide v22, v22, v23

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-long v0, v0

    move-wide/from16 v21, v0

    aput-wide v21, v20, v6

    .line 321
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 326
    :cond_4
    if-eqz v13, :cond_6

    .line 327
    const/4 v6, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_6

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v20, v0

    aget-wide v21, v20, v6

    int-to-float v0, v13

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v24, v0

    aget-wide v24, v24, v6

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-wide v24, v24, v25

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v0, v23

    float-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    aput-wide v21, v20, v6

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v6

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gez v20, :cond_5

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    aput-wide v21, v20, v6

    .line 327
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 338
    :cond_6
    const/16 v20, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v20

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    const-wide/16 v22, 0x3

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 340
    const/4 v6, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_8

    .line 341
    if-lez v6, :cond_7

    .line 342
    const/16 v20, 0x2c

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    const/16 v20, 0x2c

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v20, v0

    aget v20, v20, v6

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v6

    const-wide/16 v22, 0x400

    mul-long v20, v20, v22

    const-wide/16 v22, 0x1000

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 340
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 351
    :cond_8
    mul-int v20, p1, p2

    mul-int/lit8 v20, v20, 0x4

    mul-int/lit8 v20, v20, 0x3

    move/from16 v0, v20

    div-int/lit16 v14, v0, 0x400

    .line 352
    .local v14, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10e000b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 353
    .local v16, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10e000a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 355
    .local v15, "reserve_abs":I
    if-ltz v15, :cond_9

    .line 356
    move v14, v15

    .line 359
    :cond_9
    if-eqz v16, :cond_a

    .line 360
    add-int v14, v14, v16

    .line 361
    if-gez v14, :cond_a

    .line 362
    const/4 v14, 0x0

    .line 367
    :cond_a
    if-eqz p3, :cond_b

    .line 368
    const-string v20, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v20, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v20, "sys.sysctl.extra_free_kbytes"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_b
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 605
    const/4 v1, 0x0

    .line 607
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 612
    if-eqz v2, :cond_2

    .line 614
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 619
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 615
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 616
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 609
    :catch_1
    move-exception v0

    .line 610
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 612
    if-eqz v1, :cond_0

    .line 614
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 615
    :catch_2
    move-exception v3

    goto :goto_0

    .line 612
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 614
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 616
    :cond_1
    :goto_3
    throw v3

    .line 615
    :catch_3
    move-exception v4

    goto :goto_3

    .line 612
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 609
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x1

    .line 275
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_0

    .line 276
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 277
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 278
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 279
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 280
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 283
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .prologue
    .line 601
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 5
    .param p1, "adjustment"    # I

    .prologue
    const-wide/16 v3, 0x400

    .line 588
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v1, v1, v0

    mul-long/2addr v1, v3

    .line 593
    :goto_1
    return-wide v1

    .line 588
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    mul-long/2addr v1, v3

    goto :goto_1
.end method
