.class Lcom/android/server/NotificationManagerService$2;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->notifyPostedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;

.field final synthetic val$info:Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationListenerInfo;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/NotificationManagerService$2;->val$info:Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    iput-object p3, p0, Lcom/android/server/NotificationManagerService$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$2;->val$info:Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->notifyPostedIfUserMatch(Landroid/service/notification/StatusBarNotification;)V

    .line 824
    return-void
.end method
