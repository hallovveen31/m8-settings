.class Lcom/android/settings/NotificationFlashSettings$5;
.super Ljava/lang/Object;
.source "NotificationFlashSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NotificationFlashSettings;->showColorPickerDialog(ILandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationFlashSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationFlashSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/settings/NotificationFlashSettings$5;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 607
    iget-object v1, p0, Lcom/android/settings/NotificationFlashSettings$5;->this$0:Lcom/android/settings/NotificationFlashSettings;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/android/settings/NotificationFlashSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 608
    .local v0, notiMgr:Landroid/app/NotificationManager;
    const-string v1, "notification_led_preview_tag"

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 609
    return-void
.end method
