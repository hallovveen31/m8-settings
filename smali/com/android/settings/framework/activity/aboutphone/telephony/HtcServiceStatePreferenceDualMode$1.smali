.class Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode$1;
.super Landroid/telephony/PhoneStateListener;
.source "HtcServiceStatePreferenceDualMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    .locals 3

    const-string v0, "HtcServiceStatePreferenceDualMode"

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

    const-string v0, "HtcServiceStatePreferenceDualMode"

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

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mCurrentPhoneType:I
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->access$000(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;)I

    move-result v0

    if-eq v0, p2, :cond_0

    const-string v0, "HtcServiceStatePreferenceDualMode"

    const-string v1, "is not current phone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    iput-object p1, v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->updateServiceState()V

    goto :goto_0
.end method
