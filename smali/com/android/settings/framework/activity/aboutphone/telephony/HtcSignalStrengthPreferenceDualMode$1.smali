.class Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;
.super Landroid/telephony/PhoneStateListener;
.source "HtcSignalStrengthPreferenceDualMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    .locals 3
    .parameter "state"
    .parameter "phoneType"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    #calls: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->access$000(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChangedExt phoneType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    #calls: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->access$000(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChangedExt state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mDualPhone:Z
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->access$100(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mDualGsmPhone:Z
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->access$200(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mCurrentPhoneType:I
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->access$300(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 95
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    #calls: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->access$000(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is not current phone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    iput-object p1, v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mServiceState:Landroid/telephony/ServiceState;

    .line 99
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    invoke-virtual {v0, p2}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->updateSignalStrength(I)V

    goto :goto_0
.end method

.method public onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V
    .locals 3
    .parameter "signalStrength"
    .parameter "phoneType"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    #calls: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->access$000(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChangedExt phoneType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    #calls: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->access$000(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChangedExt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mDualPhone:Z
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->access$100(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mDualGsmPhone:Z
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->access$200(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mCurrentPhoneType:I
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->access$300(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 81
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    #calls: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->access$000(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is not current phone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    iput-object p1, v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 85
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    invoke-virtual {v0, p2}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->updateSignalStrength(I)V

    goto :goto_0
.end method
