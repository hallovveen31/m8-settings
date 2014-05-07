.class final Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$ServiceListener;
.super Ljava/lang/Object;
.source "HtcBeatsAudioWidgetEnabler.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$ServiceListener;->this$0:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$ServiceListener;-><init>(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 113
    invoke-static {}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$ServiceListener;->this$0:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;

    const-string v1, "onServiceConnected()"

    #calls: Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->access$100(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$ServiceListener;->this$0:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    #setter for: Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->access$202(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 119
    iget-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$ServiceListener;->this$0:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mIsA2dpConnected:Z
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->access$302(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;Z)Z

    .line 121
    iget-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$ServiceListener;->this$0:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;

    sget-object v1, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_SYNC:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    .line 123
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 126
    invoke-static {}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$ServiceListener;->this$0:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;

    const-string v1, "onServiceDisconnected()"

    #calls: Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->access$100(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$ServiceListener;->this$0:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->mIsA2dpConnected:Z
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->access$302(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;Z)Z

    .line 135
    iget-object v0, p0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler$ServiceListener;->this$0:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;

    sget-object v1, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_SYNC:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;)V

    .line 137
    return-void
.end method
