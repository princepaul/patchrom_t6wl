.class Landroid/media/AudioService$HtcBeatsEffect;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcBeatsEffect"
.end annotation


# static fields
.field public static final EVT_BTHEADSET:I = 0x2

.field public static final EVT_HDMI:I = 0x4

.field public static final EVT_HEADSET:I = 0x1

.field public static final EVT_WIRELESSDISPLAY:I = 0x3


# instance fields
.field private mBTHeadsetConnected:Z

.field private mBeatsSpeaker:Z

.field private mCurrentSoundEffect:I

.field private final mEffectCommands:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForcedEffectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$ForcedEffectEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHDMIOn:Z

.field private mHeadsetConnected:Z

.field private mIconId:I

.field private final mLock:Ljava/lang/Object;

.field private mMirrorOn:Z

.field private mNotificationOn:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSystemSoundEffect:I

.field private final mValidEffectCommands:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoEvent:Landroid/media/AudioService$VideoEvent;

.field private mVideoOn:Z

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;Landroid/content/Context;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x384

    const/16 v5, 0x320

    const/16 v4, -0x64

    const/4 v3, 0x0

    .line 5034
    iput-object p1, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5020
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    .line 5035
    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mNotificationOn:Z

    .line 5037
    const-string/jumbo v0, "statusbar"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 5038
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mEffectCommands:Ljava/util/HashMap;

    .line 5039
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=none"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5040
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=Beats"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5041
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mEffectCommands:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=SRS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5043
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mValidEffectCommands:Ljava/util/HashMap;

    .line 5044
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=none"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5045
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=Beats"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5047
    iput v4, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    .line 5048
    iput v4, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    .line 5049
    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mMirrorOn:Z

    .line 5050
    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHeadsetConnected:Z

    .line 5051
    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTHeadsetConnected:Z

    .line 5052
    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHDMIOn:Z

    .line 5053
    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoOn:Z

    .line 5054
    invoke-static {}, Landroid/media/AudioManager;->hasBeatsSpeaker()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBeatsSpeaker:Z

    .line 5055
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    .line 5056
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    .line 5057
    return-void
.end method

.method private checkBeatsSupport()Z
    .locals 3

    .prologue
    .line 5336
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcBeatsEffect]checkBeatsSupport mMirrorOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mMirrorOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHeadsetConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHeadsetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBTHeadsetConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTHeadsetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHDMIOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHDMIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBeatsSpeaker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBeatsSpeaker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5337
    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mMirrorOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHeadsetConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTHeadsetConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHDMIOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBeatsSpeaker:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertEffect(I)I
    .locals 3
    .param p1, "effect"    # I

    .prologue
    .line 5350
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcBeatsEffect]convertEffect before="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5351
    const/16 v0, 0x320

    if-ne p1, v0, :cond_0

    .line 5352
    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBeatsSpeaker:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHeadsetConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTHeadsetConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoOn:Z

    if-nez v0, :cond_0

    const/4 p1, 0x2

    .line 5354
    :cond_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcBeatsEffect]convertEffect after="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5355
    return p1
.end method

.method private isValidSystemSoundEffect(I)Z
    .locals 4
    .param p1, "effect"    # I

    .prologue
    .line 5370
    const/4 v0, 0x0

    .line 5371
    .local v0, "isValidEffect":Z
    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5372
    const/4 v0, 0x1

    .line 5377
    :goto_0
    return v0

    .line 5375
    :cond_0
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this SystemSoundEffect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not valid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeForcedEffectEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 5359
    iget-object v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5360
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$ForcedEffectEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5361
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ForcedEffectEntry;

    .line 5362
    .local v0, "fee":Landroid/media/AudioService$ForcedEffectEntry;
    iget-object v2, v0, Landroid/media/AudioService$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5363
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 5364
    invoke-virtual {v0}, Landroid/media/AudioService$ForcedEffectEntry;->unlinkToDeath()V

    goto :goto_0

    .line 5367
    .end local v0    # "fee":Landroid/media/AudioService$ForcedEffectEntry;
    :cond_1
    return-void
.end method

.method private updateSoundEffect()V
    .locals 12

    .prologue
    const/16 v3, 0x320

    const/4 v2, 0x0

    .line 5295
    const/4 v9, 0x0

    .line 5296
    .local v9, "effectChanged":Z
    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffect;->checkBeatsSupport()Z

    move-result v10

    .line 5297
    .local v10, "isBeatsSupport":Z
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mEffectCommands:Ljava/util/HashMap;

    iget v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 5299
    .local v11, "oldCommand":Ljava/lang/String;
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5300
    iget v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ForcedEffectEntry;

    iget v0, v0, Landroid/media/AudioService$ForcedEffectEntry;->mEffectId:I

    if-eq v1, v0, :cond_0

    .line 5301
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ForcedEffectEntry;

    iget v0, v0, Landroid/media/AudioService$ForcedEffectEntry;->mEffectId:I

    iput v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    .line 5302
    const/4 v9, 0x1

    .line 5317
    :cond_0
    :goto_0
    if-eqz v9, :cond_2

    .line 5318
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mEffectCommands:Ljava/util/HashMap;

    iget v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5319
    .local v7, "command":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5320
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcBeatsEffect]setParameters("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5321
    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5323
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0x3e8

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    move v6, v2

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5325
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    iget v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    # invokes: Landroid/media/AudioService;->broadcastSoundEffectChanged(I)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$8800(Landroid/media/AudioService;I)V

    .line 5327
    .end local v7    # "command":Ljava/lang/String;
    :cond_2
    return-void

    .line 5305
    :cond_3
    if-nez v10, :cond_4

    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    if-eq v0, v3, :cond_4

    .line 5306
    iput v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    .line 5307
    const/4 v9, 0x1

    goto :goto_0

    .line 5309
    :cond_4
    if-eqz v10, :cond_0

    .line 5310
    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    invoke-direct {p0, v0}, Landroid/media/AudioService$HtcBeatsEffect;->convertEffect(I)I

    move-result v8

    .line 5311
    .local v8, "effect":I
    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    if-eq v0, v8, :cond_0

    .line 5312
    iput v8, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    .line 5313
    const/4 v9, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 5277
    const-string v2, "\nHtcBeatsEffect ForcedEffect stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5278
    iget-object v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5279
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5280
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$ForcedEffectEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5281
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ForcedEffectEntry;

    .line 5282
    .local v0, "fee":Landroid/media/AudioService$ForcedEffectEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     source:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$ForcedEffectEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- pid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$ForcedEffectEntry;->mCallingPid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 5286
    .end local v0    # "fee":Landroid/media/AudioService$ForcedEffectEntry;
    .end local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$ForcedEffectEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$ForcedEffectEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5287
    return-void
.end method

.method public forceSoundEffect(ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "effect"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "clientId"    # Ljava/lang/String;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 5148
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcBeatsEffect]forceSoundEffect effect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    iget-object v6, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5150
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$ForcedEffectEntry;

    iget-object v1, v1, Landroid/media/AudioService$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$ForcedEffectEntry;

    iget v1, v1, Landroid/media/AudioService$ForcedEffectEntry;->mEffectId:I

    if-ne v1, p1, :cond_0

    .line 5152
    monitor-exit v6

    .line 5165
    :goto_0
    return-void

    .line 5155
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioService$HtcBeatsEffect;->isValidSystemSoundEffect(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5156
    monitor-exit v6

    goto :goto_0

    .line 5164
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5158
    :cond_1
    :try_start_1
    invoke-direct {p0, p3}, Landroid/media/AudioService$HtcBeatsEffect;->removeForcedEffectEntry(Ljava/lang/String;)V

    .line 5159
    new-instance v0, Landroid/media/AudioService$ForcedEffectEntry;

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService$ForcedEffectEntry;-><init>(Landroid/media/AudioService;ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5160
    .local v0, "fee":Landroid/media/AudioService$ForcedEffectEntry;
    iget v1, v0, Landroid/media/AudioService$ForcedEffectEntry;->mStatus:I

    if-nez v1, :cond_2

    .line 5161
    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5162
    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffect;->updateSoundEffect()V

    .line 5164
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getSoundEffect(Z)I
    .locals 2
    .param p1, "isSystemWise"    # Z

    .prologue
    .line 5108
    const-string v0, "AudioService"

    const-string v1, "[HtcBeatsEffect]getSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5109
    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5110
    if-eqz p1, :cond_0

    .line 5111
    :try_start_0
    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    monitor-exit v1

    .line 5113
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    monitor-exit v1

    goto :goto_0

    .line 5114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hideBeatsIcon()V
    .locals 2

    .prologue
    .line 5084
    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mNotificationOn:Z

    if-eqz v0, :cond_0

    .line 5085
    const-string v0, "AudioService"

    const-string v1, "[HtcBeatsEffect]disableBeats notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5087
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "beats_effect"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 5088
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mNotificationOn:Z

    .line 5090
    :cond_0
    return-void
.end method

.method public loadSoundEffect()V
    .locals 5

    .prologue
    const/16 v4, -0x64

    .line 5189
    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "audio.soundenhancer.effect"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5190
    .local v0, "effect":I
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcBeatsEffect]loadSoundEffect id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5191
    iget-object v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5192
    if-eq v0, v4, :cond_1

    .line 5193
    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AudioService$HtcBeatsEffect;->isValidSystemSoundEffect(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5194
    iput v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    .line 5201
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffect;->updateSoundEffect()V

    .line 5202
    monitor-exit v2

    .line 5203
    :goto_1
    return-void

    .line 5196
    :cond_0
    monitor-exit v2

    goto :goto_1

    .line 5202
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5199
    :cond_1
    const/16 v1, 0x384

    :try_start_1
    iput v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onEventChanged(IZ)V
    .locals 3
    .param p1, "eventId"    # I
    .param p2, "status"    # Z

    .prologue
    .line 5212
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcBeatsEffect]onEventChanged id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5213
    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5214
    packed-switch p1, :pswitch_data_0

    .line 5228
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffect;->updateSoundEffect()V

    .line 5229
    monitor-exit v1

    .line 5230
    return-void

    .line 5216
    :pswitch_0
    iput-boolean p2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHeadsetConnected:Z

    goto :goto_0

    .line 5229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5219
    :pswitch_1
    :try_start_1
    iput-boolean p2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTHeadsetConnected:Z

    goto :goto_0

    .line 5222
    :pswitch_2
    iput-boolean p2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mMirrorOn:Z

    goto :goto_0

    .line 5225
    :pswitch_3
    iput-boolean p2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHDMIOn:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onMessageBeatsNotify()V
    .locals 5

    .prologue
    .line 5259
    iget-object v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5260
    :try_start_0
    iget v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    .line 5262
    .local v1, "effect":I
    # getter for: Landroid/media/AudioService;->SUPPORT_DTS:Z
    invoke-static {}, Landroid/media/AudioService;->access$8700()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5263
    const/16 v2, 0x320

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoOn:Z

    if-eqz v2, :cond_0

    .line 5264
    const/16 v1, 0x385

    .line 5266
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5268
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    .line 5269
    .local v0, "active":Z
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcBeatsEffect]onMessageBeatsNotify active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " effect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5270
    if-eqz v0, :cond_2

    const/16 v2, 0x384

    if-eq v1, v2, :cond_1

    const/16 v2, 0x385

    if-ne v1, v2, :cond_2

    .line 5271
    :cond_1
    invoke-virtual {p0, v1}, Landroid/media/AudioService$HtcBeatsEffect;->showBeatsIcon(I)V

    .line 5274
    :goto_0
    return-void

    .line 5266
    .end local v0    # "active":Z
    .end local v1    # "effect":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 5273
    .restart local v0    # "active":Z
    .restart local v1    # "effect":I
    :cond_2
    invoke-virtual {p0}, Landroid/media/AudioService$HtcBeatsEffect;->hideBeatsIcon()V

    goto :goto_0
.end method

.method public onVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "status"    # Z

    .prologue
    .line 5233
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcBeatsEffect]onVideoEvent client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5234
    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5235
    if-eqz p3, :cond_2

    .line 5236
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    iget-object v0, v0, Landroid/media/AudioService$VideoEvent;->mClientId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5237
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    invoke-virtual {v0}, Landroid/media/AudioService$VideoEvent;->unlinkToDeath()V

    .line 5238
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    .line 5240
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    if-nez v0, :cond_1

    .line 5241
    new-instance v0, Landroid/media/AudioService$VideoEvent;

    iget-object v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    invoke-direct {v0, v2, p1, p2}, Landroid/media/AudioService$VideoEvent;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    .line 5248
    :cond_1
    :goto_0
    iput-boolean p3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoOn:Z

    .line 5249
    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffect;->updateSoundEffect()V

    .line 5250
    monitor-exit v1

    .line 5251
    return-void

    .line 5244
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    invoke-virtual {v0}, Landroid/media/AudioService$VideoEvent;->unlinkToDeath()V

    .line 5245
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    goto :goto_0

    .line 5250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetSoundEffect()V
    .locals 2

    .prologue
    .line 5096
    const-string v0, "AudioService"

    const-string v1, "[HtcBeatsEffect]resetSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5097
    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5098
    const/16 v0, -0x64

    :try_start_0
    iput v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    .line 5099
    const/16 v0, -0x64

    iput v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    .line 5100
    monitor-exit v1

    .line 5101
    return-void

    .line 5100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreSoundEffect(Ljava/lang/String;)V
    .locals 4
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 5171
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcBeatsEffect]restoreSoundEffect client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5172
    iget-object v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5173
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$ForcedEffectEntry;

    iget-object v1, v1, Landroid/media/AudioService$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5174
    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ForcedEffectEntry;

    .line 5175
    .local v0, "fee":Landroid/media/AudioService$ForcedEffectEntry;
    invoke-virtual {v0}, Landroid/media/AudioService$ForcedEffectEntry;->unlinkToDeath()V

    .line 5176
    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffect;->updateSoundEffect()V

    .line 5180
    .end local v0    # "fee":Landroid/media/AudioService$ForcedEffectEntry;
    :goto_0
    monitor-exit v2

    .line 5181
    return-void

    .line 5179
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioService$HtcBeatsEffect;->removeForcedEffectEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 5180
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSystemSoundEffect(I)V
    .locals 4
    .param p1, "effect"    # I

    .prologue
    .line 5121
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcBeatsEffect]setSystemSoundEffect id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5122
    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5123
    :try_start_0
    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    if-ne v0, p1, :cond_0

    .line 5124
    const-string v0, "AudioService"

    const-string v2, "[HtcBeatsEffect]system sound effect is the same as previous"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5125
    monitor-exit v1

    .line 5142
    :goto_0
    return-void

    .line 5127
    :cond_0
    const/16 v0, -0x64

    if-eq p1, v0, :cond_3

    .line 5128
    invoke-direct {p0, p1}, Landroid/media/AudioService$HtcBeatsEffect;->isValidSystemSoundEffect(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5129
    iput p1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    .line 5136
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "audio.soundenhancer.effect"

    iget v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5137
    const-string v0, "AudioService"

    const-string v2, "[HtcBeatsEffect]can\'t update system sound effect in system setting"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5140
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffect;->updateSoundEffect()V

    .line 5141
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5131
    :cond_2
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 5134
    :cond_3
    const/16 v0, 0x384

    iput v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public showBeatsIcon(I)V
    .locals 3
    .param p1, "iconId"    # I

    .prologue
    const/4 v2, 0x1

    .line 5063
    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mNotificationOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mIconId:I

    if-eq v0, p1, :cond_1

    .line 5064
    :cond_0
    const-string v0, "AudioService"

    const-string v1, "[HtcBeatsEffect]enableBeats notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5066
    iput p1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mIconId:I

    .line 5067
    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mIconId:I

    packed-switch v0, :pswitch_data_0

    .line 5075
    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "beats_effect"

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 5076
    iput-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mNotificationOn:Z

    .line 5078
    :cond_1
    return-void

    .line 5067
    nop

    :pswitch_data_0
    .packed-switch 0x385
        :pswitch_0
    .end packed-switch
.end method
