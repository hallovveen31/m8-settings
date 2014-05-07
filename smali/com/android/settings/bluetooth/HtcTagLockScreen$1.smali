.class Lcom/android/settings/bluetooth/HtcTagLockScreen$1;
.super Ljava/lang/Object;
.source "HtcTagLockScreen.java"

# interfaces
.implements Lcom/android/settings/bluetooth/HtcTagReminderView$Callback;


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
    .line 61
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen$1;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonDrop(Z)V
    .locals 2
    .parameter "dropSettings"

    .prologue
    .line 69
    invoke-static {}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcTagLockScreen"

    const-string v1, "reminderview tile onButtonDrop!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    if-eqz p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen$1;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreen;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/bluetooth/HtcTagLockScreen;->requestUnlockAndFinish(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->access$100(Lcom/android/settings/bluetooth/HtcTagLockScreen;Z)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen$1;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreen;

    #calls: Lcom/android/settings/bluetooth/HtcTagLockScreen;->backToLockScreen()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->access$200(Lcom/android/settings/bluetooth/HtcTagLockScreen;)V

    goto :goto_0
.end method

.method public onTileDrop()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcTagLockScreen"

    const-string v1, "reminderview tile onTileDrop!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen$1;->this$0:Lcom/android/settings/bluetooth/HtcTagLockScreen;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/bluetooth/HtcTagLockScreen;->requestUnlockAndFinish(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->access$100(Lcom/android/settings/bluetooth/HtcTagLockScreen;Z)V

    .line 66
    return-void
.end method
