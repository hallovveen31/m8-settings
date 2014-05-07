.class Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;
.super Landroid/telephony/PhoneStateListener;
.source "HtcAirplaneModeWidgetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneModeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;-><init>(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 102
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeDualAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    const-string v1, "Dualmode device."

    #calls: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$000(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$102(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 107
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->isEnablerActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    const-string v1, "onServiceStateChanged - to update the airplane mode UI."

    #calls: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$000(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    #calls: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$200(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    const-string v1, "Enable not actived."

    #calls: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$000(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    .locals 4
    .parameter "serviceState"
    .parameter "phoneType"

    .prologue
    const/4 v3, 0x1

    .line 118
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChangedExt - phoneType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,isModeCG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,isModeGG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$000(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    const/4 v1, 0x2

    #setter for: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mMainPhoneType:I
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$302(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;I)I

    .line 121
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    #setter for: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mSubPhoneType:I
    invoke-static {v0, v3}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$402(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;I)I

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChangedExt - mMainPhoneType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    #getter for: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mMainPhoneType:I
    invoke-static {v2}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$300(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mSubPhoneType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    #getter for: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mSubPhoneType:I
    invoke-static {v2}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$400(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,serviceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$000(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    #getter for: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mMainPhoneType:I
    invoke-static {v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$300(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 130
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$502(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 137
    :goto_1
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->isEnablerActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    const-string v1, "onServiceStateChangedExt - to update the airplane mode UI."

    #calls: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$000(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    #calls: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$200(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;)V

    .line 143
    :goto_2
    return-void

    .line 122
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    #setter for: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mMainPhoneType:I
    invoke-static {v0, v3}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$302(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;I)I

    .line 124
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    const/4 v1, 0x5

    #setter for: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mSubPhoneType:I
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$402(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;I)I

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    const-string v1, "It\'s not dualmode device."

    #calls: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$000(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    #getter for: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->mSubPhoneType:I
    invoke-static {v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$400(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 132
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$602(Ljava/lang/Integer;)Ljava/lang/Integer;

    goto :goto_1

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    const-string v1, "wrong phone type."

    #calls: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$000(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    const-string v1, "Enable not actived."

    #calls: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$000(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;Ljava/lang/String;)V

    goto :goto_2
.end method
