.class final Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$ServiceListener;
.super Ljava/lang/Object;
.source "HtcBoomSoundWidgetEnabler.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$ServiceListener;->this$0:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$ServiceListener;-><init>(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$ServiceListener;->this$0:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;

    const-string v1, "onServiceConnected()"

    #calls: Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->access$100(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$ServiceListener;->this$0:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    #setter for: Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->access$202(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$ServiceListener;->this$0:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsA2dpConnected:Z
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->access$302(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;Z)Z

    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$ServiceListener;->this$0:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;

    sget-object v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$ServiceListener;->this$0:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;

    const-string v1, "onServiceDisconnected()"

    #calls: Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->access$100(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$ServiceListener;->this$0:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->mIsA2dpConnected:Z
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->access$302(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;Z)Z

    iget-object v0, p0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler$ServiceListener;->this$0:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;

    sget-object v1, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/boomsound/HtcBoomSoundState;)V

    return-void
.end method
