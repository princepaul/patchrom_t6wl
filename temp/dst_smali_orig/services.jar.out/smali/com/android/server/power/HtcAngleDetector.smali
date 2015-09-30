.class final Lcom/android/server/power/HtcAngleDetector;
.super Ljava/lang/Object;
.source "HtcAngleDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;
    }
.end annotation


# instance fields
.field private ANGLE_TOLERANCE:I

.field private DEBUG_ON:Z

.field private FLAT_X_ANGLE_FROM:I

.field private FLAT_X_ANGLE_TO:I

.field private FLAT_Y_ANGLE_FROM:I

.field private FLAT_Y_ANGLE_TO:I

.field private FLAT_Z_ANGLE_FROM:I

.field private FLAT_Z_ANGLE_TO:I

.field private GRAVITY_TOLERANCE:I

.field private final INIT_ANGLE:I

.field private final MASTER_ENABLE:Z

.field private final ONE_EIGHTY_OVER_PI:F

.field private final PROXIMITY_NEGATIVE:I

.field private final PROXIMITY_POSITIVE:I

.field private final PROXIMITY_UNKNOWN:I

.field private READING_DEBOUNCE_COUNTER:I

.field private READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

.field private READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

.field private READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

.field private READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

.field private READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

.field private READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

.field private READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

.field private READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

.field private READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

.field private READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

.field private READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

.field private READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

.field private READING_PORTRAIT_X_ANGLE_FROM:I

.field private READING_PORTRAIT_X_ANGLE_TO:I

.field private READING_PORTRAIT_Y_ANGLE_FROM:I

.field private READING_PORTRAIT_Y_ANGLE_TO:I

.field private READING_PORTRAIT_Z_ANGLE_FROM:I

.field private READING_PORTRAIT_Z_ANGLE_TO:I

.field private SCREEN_TIMEOUT_DEFAULT:I

.field private SCREEN_TIMEOUT_READING:I

.field private SHAKING_GRAVITY:I

.field private final SP_ANGLE_TOLERANCE:Ljava/lang/String;

.field private final SP_FLAT_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_FLAT_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_FLAT_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_FLAT_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_FLAT_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_FLAT_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_GRAVITY_TOLERANCE:Ljava/lang/String;

.field private final SP_READING_DEBOUNCE:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_SCREEN_TIMEOUT_DEFAULT:Ljava/lang/String;

.field private final SP_SCREEN_TIMEOUT_READING:Ljava/lang/String;

.field private final SP_SHAKING_GRAVITY:Ljava/lang/String;

.field private final SP_TALKING_DEBOUNCE:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_PETER_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_PETER_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_Z_ANGLE_TO:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private TALKING_DEBOUNCE_COUNTER:I

.field private TALKING_LEFT_HAND_X_ANGLE_FROM:I

.field private TALKING_LEFT_HAND_X_ANGLE_TO:I

.field private TALKING_LEFT_HAND_Y_ANGLE_FROM:I

.field private TALKING_LEFT_HAND_Y_ANGLE_TO:I

.field private TALKING_LEFT_HAND_Z_ANGLE_FROM:I

.field private TALKING_LEFT_HAND_Z_ANGLE_TO:I

.field private TALKING_PETER_Z_ANGLE_FROM:I

.field private TALKING_PETER_Z_ANGLE_TO:I

.field private TALKING_RIGHT_HAND_X_ANGLE_FROM:I

.field private TALKING_RIGHT_HAND_X_ANGLE_TO:I

.field private TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

.field private TALKING_RIGHT_HAND_Y_ANGLE_TO:I

.field private TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

.field private TALKING_RIGHT_HAND_Z_ANGLE_TO:I

.field private final mContext:Landroid/content/Context;

.field private final mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

.field private final mGSensor:Landroid/hardware/Sensor;

.field private mGSensorEnabled:Z

.field private final mGSensorListener:Landroid/hardware/SensorEventListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mInitCompleted:Z

.field private mIsReadingDetected:Z

.field private mIsScreenTimeout:Z

.field private mIsShakeAwake:Z

.field private mIsTalkingDetected:Z

.field private mLastXAngle:I

.field private mLastYAngle:I

.field private mLastZAngle:I

.field private mPSensorOn:Z

.field private mPSensorStatus:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mReadingCounter:I

.field private mScreenOn:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mShakeAwakeTimeoutTask:Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;

.field private mTalkingCounter:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;Landroid/hardware/SensorManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpcInternalAPI"    # Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    const/16 v5, 0x3e8

    const/16 v4, 0x14

    const/16 v1, 0x5a

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HtcAngleDetector"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/util/HtcLogChecker;->DEBUG_FLAG:Z

    iput-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    iput-boolean v3, p0, Lcom/android/server/power/HtcAngleDetector;->MASTER_ENABLE:Z

    const-string v0, "persist.htc.had.scr.default"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_SCREEN_TIMEOUT_DEFAULT:Ljava/lang/String;

    const-string v0, "persist.htc.had.scr.read"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_SCREEN_TIMEOUT_READING:Ljava/lang/String;

    const-string v0, "persist.htc.had.at"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_ANGLE_TOLERANCE:Ljava/lang/String;

    const-string v0, "persist.htc.had.gt"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_GRAVITY_TOLERANCE:Ljava/lang/String;

    const-string v0, "persist.htc.had.sg"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_SHAKING_GRAVITY:Ljava/lang/String;

    const-string v0, "persist.htc.had.f.x.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_FLAT_X_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.f.x.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_FLAT_X_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.f.y.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_FLAT_Y_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.f.y.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_FLAT_Y_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.f.z.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_FLAT_Z_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.f.z.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_FLAT_Z_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.tr.x.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_X_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.tr.x.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_X_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.tr.y.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_Y_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.tr.y.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_Y_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.tr.z.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_Z_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.tr.z.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_Z_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.tl.x.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_LEFT_HAND_X_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.tl.x.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_LEFT_HAND_X_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.tl.y.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_LEFT_HAND_Y_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.tl.y.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_LEFT_HAND_Y_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.tl.z.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_LEFT_HAND_Z_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.tl.z.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_LEFT_HAND_Z_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.tp.z.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_PETER_Z_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.tp.z.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_PETER_Z_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.rp.x.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_PORTRAIT_X_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.rp.x.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_PORTRAIT_X_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.rp.y.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_PORTRAIT_Y_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.rp.y.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_PORTRAIT_Y_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.rp.z.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_PORTRAIT_Z_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.rp.z.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_PORTRAIT_Z_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.rlr.x.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.rlr.x.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_X_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.rlr.y.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.rlr.y.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.rlr.z.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.rlr.z.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.rll.x.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_X_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.rll.x.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_X_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.rll.y.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.rll.y.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_Y_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.rll.z.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:Ljava/lang/String;

    const-string v0, "persist.htc.had.rll.z.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_Z_ANGLE_TO:Ljava/lang/String;

    const-string v0, "persist.htc.had.talk.debounce"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_DEBOUNCE:Ljava/lang/String;

    const-string v0, "persist.htc.had.read.debounce"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_DEBOUNCE:Ljava/lang/String;

    const v0, 0x42652ee1

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->ONE_EIGHTY_OVER_PI:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->PROXIMITY_UNKNOWN:I

    iput v2, p0, Lcom/android/server/power/HtcAngleDetector;->PROXIMITY_NEGATIVE:I

    iput v3, p0, Lcom/android/server/power/HtcAngleDetector;->PROXIMITY_POSITIVE:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    const v0, 0xea60

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    iput v4, p0, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    iput v4, p0, Lcom/android/server/power/HtcAngleDetector;->SHAKING_GRAVITY:I

    const/16 v0, -0xf

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    const/16 v0, -0xf

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    iput v1, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    const/16 v0, -0x5a

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    const/16 v0, -0x19

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    iput v4, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    iput v1, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    const/16 v0, -0x2d

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    iput v1, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    iput v4, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    iput v1, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    const/16 v0, -0x2d

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    const/16 v0, -0x5a

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    const/16 v0, -0x19

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    const/16 v0, -0x1e

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    const/16 v0, -0x1e

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    iput v1, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    iput v2, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    iput v1, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    const/16 v0, -0xa

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    const/16 v0, -0xa

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    iput v2, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    const/16 v0, -0x50

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    const/16 v0, -0xa

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    iput v2, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    iput v3, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    iput v3, p0, Lcom/android/server/power/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    new-instance v0, Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;-><init>(Lcom/android/server/power/HtcAngleDetector;Lcom/android/server/power/HtcAngleDetector$1;)V

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mShakeAwakeTimeoutTask:Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mScreenOn:Z

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorOn:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mInitCompleted:Z

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mIsShakeAwake:Z

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z

    iput v2, p0, Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I

    iput v2, p0, Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I

    iput v5, p0, Lcom/android/server/power/HtcAngleDetector;->INIT_ANGLE:I

    iput v5, p0, Lcom/android/server/power/HtcAngleDetector;->mLastXAngle:I

    iput v5, p0, Lcom/android/server/power/HtcAngleDetector;->mLastYAngle:I

    iput v5, p0, Lcom/android/server/power/HtcAngleDetector;->mLastZAngle:I

    new-instance v0, Lcom/android/server/power/HtcAngleDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/HtcAngleDetector$1;-><init>(Lcom/android/server/power/HtcAngleDetector;)V

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorListener:Landroid/hardware/SensorEventListener;

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    const-string v1, "Contructor: MASTER_ENABLE=true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/power/HtcAngleDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HAD"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/power/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "HtcAngleDetector"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->readSysProp()V

    return-void
.end method

.method private acceleroMeterToString(F)Ljava/lang/String;
    .locals 6
    .param p1, "meter"    # F

    .prologue
    const-string v1, ""

    .local v1, "s":Ljava/lang/String;
    :try_start_0
    const-string v2, "% 2.3f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcAngleDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acceleroMeterToString("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Exception caught. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/power/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mShakeAwakeTimeoutTask:Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/HtcAngleDetector;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/HtcAngleDetector;->isSamePose(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/power/HtcAngleDetector;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAngleDetector;->angleToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/HtcAngleDetector;F)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/power/HtcAngleDetector;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/HtcAngleDetector;->isReading(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->isActualScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/power/HtcAngleDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I

    return p1
.end method

.method static synthetic access$1908(Lcom/android/server/power/HtcAngleDetector;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/power/HtcAngleDetector;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAngleDetector;->isShaking(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/power/HtcAngleDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I

    return p1
.end method

.method static synthetic access$2108(Lcom/android/server/power/HtcAngleDetector;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/HtcAngleDetector;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/HtcAngleDetector;->isTalking(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/power/HtcAngleDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsShakeAwake:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/power/HtcAngleDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/power/HtcAngleDetector;->mIsShakeAwake:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/power/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/power/HtcAngleDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/power/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/power/HtcAngleDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/power/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/power/HtcAngleDetector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAngleDetector;->setScreenTimeout(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    return-object v0
.end method

.method private angleToString(I)Ljava/lang/String;
    .locals 6
    .param p1, "angle"    # I

    .prologue
    const-string v1, ""

    .local v1, "s":Ljava/lang/String;
    :try_start_0
    const-string v2, "% 2d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcAngleDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "angleToString("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Exception caught. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkCondition()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCondition: mInitCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mInitCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPSensorOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPSensorStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsScreenTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorOn:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I

    if-eq v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mInitCompleted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    if-eqz v0, :cond_3

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/power/HtcAngleDetector;->enableDetector(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorOn:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I

    if-ne v0, v3, :cond_2

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcAngleDetector;->enableDetector(Z)V

    goto :goto_0
.end method

.method private enableDetector(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    iget-boolean v1, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    .local v1, "old_enable":Z
    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mInitCompleted:Z

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    invoke-direct {p0, v2}, Lcom/android/server/power/HtcAngleDetector;->setScreenTimeout(I)V

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    if-eq v2, v1, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    const-string v2, "HtcAngleDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableDetector: mGSensorEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z

    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/server/power/HtcAngleDetector;->setScreenTimeout(I)V

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HtcAngleDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableDetector: Exception caught. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isActualScreenOn()Z
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isActualScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcAngleDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActualScreenOn: Exception caught. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isFlat(III)Z
    .locals 1
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGravityBurst(F)Z
    .locals 4
    .param p1, "gravity"    # F

    .prologue
    const v3, 0x411ce80a

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    int-to-float v0, v0

    sub-float v0, v3, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    int-to-float v0, v0

    add-float/2addr v0, v3

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gravity burst detected. gravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tolerance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    int-to-float v2, v2

    sub-float v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReading(III)Z
    .locals 1
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/HtcAngleDetector;->isReadingViaPortrait(III)Z

    move-result v0

    return v0
.end method

.method private isReadingViaLandscapeLeft(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading via landscape (key at left side) detected. xAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadingViaLandscapeRight(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading via landscape (key at right side) detected. xAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadingViaPortrait(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading via portrait detected. xAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSamePose(III)Z
    .locals 4
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    const/4 v0, 0x1

    const/16 v2, 0x3e8

    iget v1, p0, Lcom/android/server/power/HtcAngleDetector;->mLastXAngle:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/power/HtcAngleDetector;->mLastYAngle:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/power/HtcAngleDetector;->mLastZAngle:I

    if-ne v1, v2, :cond_1

    iput p1, p0, Lcom/android/server/power/HtcAngleDetector;->mLastXAngle:I

    iput p2, p0, Lcom/android/server/power/HtcAngleDetector;->mLastYAngle:I

    iput p3, p0, Lcom/android/server/power/HtcAngleDetector;->mLastZAngle:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/server/power/HtcAngleDetector;->mLastXAngle:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/power/HtcAngleDetector;->mLastYAngle:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/power/HtcAngleDetector;->mLastZAngle:I

    sub-int v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcAngleDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSamePose: Skip. xAngle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/HtcAngleDetector;->mLastXAngle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", yAngle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/HtcAngleDetector;->mLastYAngle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", zAngle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/HtcAngleDetector;->mLastZAngle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tolerance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private isShaking(F)Z
    .locals 3
    .param p1, "gravity"    # F

    .prologue
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->SHAKING_GRAVITY:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shaking detected. gravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->SHAKING_GRAVITY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalking(III)Z
    .locals 1
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/HtcAngleDetector;->isTalkingViaRightHand(III)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/HtcAngleDetector;->isTalkingViaLeftHand(III)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/HtcAngleDetector;->isTalkingViaPeterPose(III)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkingViaLeftHand(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Talking via left hand detected. xAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkingViaPeterPose(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Talking via peter pose detected. xAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkingViaRightHand(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Talking via right hand detected. xAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readSysProp()V
    .locals 51

    .prologue
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    move/from16 v31, v0

    .local v31, "old_std":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    move/from16 v32, v0

    .local v32, "old_str":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    .local v3, "old_at":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    .local v10, "old_gt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SHAKING_GRAVITY:I

    move/from16 v30, v0

    .local v30, "old_sg":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    .local v4, "old_fxf":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    .local v5, "old_fxt":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    .local v6, "old_fyf":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    .local v7, "old_fyt":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    .local v8, "old_fzf":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    .local v9, "old_fzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    move/from16 v42, v0

    .local v42, "old_trxf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    move/from16 v43, v0

    .local v43, "old_trxt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    move/from16 v44, v0

    .local v44, "old_tryf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    move/from16 v45, v0

    .local v45, "old_tryt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    move/from16 v46, v0

    .local v46, "old_trzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    move/from16 v47, v0

    .local v47, "old_trzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    move/from16 v34, v0

    .local v34, "old_tlxf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    move/from16 v35, v0

    .local v35, "old_tlxt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    move/from16 v36, v0

    .local v36, "old_tlyf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    move/from16 v37, v0

    .local v37, "old_tlyt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    move/from16 v38, v0

    .local v38, "old_tlzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    move/from16 v39, v0

    .local v39, "old_tlzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    move/from16 v40, v0

    .local v40, "old_tpzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    move/from16 v41, v0

    .local v41, "old_tpzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    move/from16 v24, v0

    .local v24, "old_rpxf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    move/from16 v25, v0

    .local v25, "old_rpxt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    move/from16 v26, v0

    .local v26, "old_rpyf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    move/from16 v27, v0

    .local v27, "old_rpyt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    move/from16 v28, v0

    .local v28, "old_rpzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    move/from16 v29, v0

    .local v29, "old_rpzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    move/from16 v18, v0

    .local v18, "old_rlrxf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    move/from16 v19, v0

    .local v19, "old_rlrxt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    move/from16 v20, v0

    .local v20, "old_rlryf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    move/from16 v21, v0

    .local v21, "old_rlryt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    move/from16 v22, v0

    .local v22, "old_rlrzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    move/from16 v23, v0

    .local v23, "old_rlrzt":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    .local v12, "old_rllxf":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    .local v13, "old_rllxt":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    .local v14, "old_rllyf":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    .local v15, "old_rllyt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    move/from16 v16, v0

    .local v16, "old_rllzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    move/from16 v17, v0

    .local v17, "old_rllzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    move/from16 v33, v0

    .local v33, "old_td":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/power/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    .local v11, "old_rd":I
    :try_start_0
    const-string v48, "persist.htc.had.scr.default"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    const-string v48, "persist.htc.had.scr.read"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    const-string v48, "persist.htc.had.at"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    const-string v48, "persist.htc.had.gt"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    const-string v48, "persist.htc.had.sg"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SHAKING_GRAVITY:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->SHAKING_GRAVITY:I

    const-string v48, "persist.htc.had.f.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    const-string v48, "persist.htc.had.f.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    const-string v48, "persist.htc.had.f.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    const-string v48, "persist.htc.had.f.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    const-string v48, "persist.htc.had.f.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    const-string v48, "persist.htc.had.f.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    const-string v48, "persist.htc.had.tr.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    const-string v48, "persist.htc.had.tr.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    const-string v48, "persist.htc.had.tr.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    const-string v48, "persist.htc.had.tr.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    const-string v48, "persist.htc.had.tr.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    const-string v48, "persist.htc.had.tr.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    const-string v48, "persist.htc.had.tl.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    const-string v48, "persist.htc.had.tl.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    const-string v48, "persist.htc.had.tl.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    const-string v48, "persist.htc.had.tl.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    const-string v48, "persist.htc.had.tl.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    const-string v48, "persist.htc.had.tl.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    const-string v48, "persist.htc.had.tp.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    const-string v48, "persist.htc.had.tp.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    const-string v48, "persist.htc.had.rp.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    const-string v48, "persist.htc.had.rp.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    const-string v48, "persist.htc.had.rp.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    const-string v48, "persist.htc.had.rp.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    const-string v48, "persist.htc.had.rp.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    const-string v48, "persist.htc.had.rp.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    const-string v48, "persist.htc.had.rlr.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    const-string v48, "persist.htc.had.rlr.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    const-string v48, "persist.htc.had.rlr.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    const-string v48, "persist.htc.had.rlr.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    const-string v48, "persist.htc.had.rlr.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    const-string v48, "persist.htc.had.rlr.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    const-string v48, "persist.htc.had.rll.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    const-string v48, "persist.htc.had.rll.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    const-string v48, "persist.htc.had.rll.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    const-string v48, "persist.htc.had.rll.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    const-string v48, "persist.htc.had.rll.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    const-string v48, "persist.htc.had.rll.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    const-string v48, "persist.htc.had.talk.debounce"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    const-string v48, "persist.htc.had.read.debounce"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    move/from16 v48, v0

    if-eqz v48, :cond_1

    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: SCREEN_TIMEOUT_DEFAULT="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", SCREEN_TIMEOUT_READING="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", ANGLE_TOLERANCE="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", GRAVITY_TOLERANCE="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", SHAKING_GRAVITY="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SHAKING_GRAVITY:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: flat. X_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", X_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: talking right hand. X_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", X_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: talking left hand. X_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", X_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: talking peter pose. Z_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: reading via portrait. X_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", X_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: reading via landscape (key at right side). X_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", X_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: reading via landscape (key at left side). X_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", X_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: debounce. TALKING="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", READING="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    move/from16 v48, v0

    if-eqz v48, :cond_0

    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSysProp: Unable to get SystemProperties. "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private resetLastAngles()V
    .locals 1

    .prologue
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->mLastXAngle:I

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->mLastYAngle:I

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->mLastZAngle:I

    return-void
.end method

.method private setScreenTimeout(I)V
    .locals 4
    .param p1, "screenOffDelay"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/PowerManager;->customizeScreenDelay_Always(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcAngleDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenTimeout: Exception caught. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected disableDetector_Ext()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcAngleDetector;->enableDetector(Z)V

    return-void
.end method

.method protected isScreenTimeout()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    return v0
.end method

.method protected isTalkingDetected()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z

    return v0
.end method

.method protected isTurnOnScreenOnce()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->isActualScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I

    iput-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I

    iput-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected notifyScreenTimeout(Z)V
    .locals 3
    .param p1, "isTimeout"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    if-eq v0, p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyScreenTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->checkCondition()V

    :cond_2
    return-void
.end method

.method protected proximitySensorOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorOn:Z

    if-eq v0, p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proximitySensorOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorOn:Z

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorOn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mInitCompleted:Z

    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->checkCondition()V

    :cond_2
    return-void
.end method

.method protected proximitySensorStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proximitySensorStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I

    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->checkCondition()V

    :cond_1
    return-void
.end method
