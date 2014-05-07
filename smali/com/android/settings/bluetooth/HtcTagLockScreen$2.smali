.class Lcom/android/settings/bluetooth/HtcTagLockScreen$2;
.super Lcom/htc/reminderview/service/HtcReminderClient;
.source "HtcTagLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/HtcTagLockScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/HtcTagLockScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/HtcTagLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen$2;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreen;

    invoke-direct {p0}, Lcom/htc/reminderview/service/HtcReminderClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewModeChange(I)V
    .locals 3
    .parameter "viewMode"

    .prologue
    .line 81
    invoke-static {}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcTagLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewModeChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcTagLockScreen"

    const-string v1, ">>>>>>>unlock<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    return-void
.end method
