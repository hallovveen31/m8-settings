.class Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$1;
.super Landroid/telephony/PhoneStateListener;
.source "HtcSignalStrengthPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->initialListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    #setter for: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mCallState:I
    invoke-static {v0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->access$202(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;I)I

    .line 369
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->updateSignalStrength()V

    .line 370
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceStateChanged receiving null serviceState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    #setter for: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->access$102(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 360
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->updateSignalStrength()V

    goto :goto_0
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    .line 377
    if-nez p1, :cond_0

    .line 378
    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSignalStrengthsChanged receiving null signalStrength"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    #setter for: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->access$302(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 382
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->updateSignalStrength()V

    goto :goto_0
.end method
