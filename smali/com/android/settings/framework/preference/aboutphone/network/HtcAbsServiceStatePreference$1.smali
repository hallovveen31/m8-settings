.class Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference$1;
.super Landroid/telephony/PhoneStateListener;
.source "HtcAbsServiceStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->initialListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeDual()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;

    #calls: Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->access$000(Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is dual sim phone, ignored"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getPhoneType()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;

    #calls: Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->access$000(Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is not current phone, ignored"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;

    #setter for: Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->access$102(Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->getSummaryString(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    .locals 3

    const/4 v1, 0x2

    if-eq v1, p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;

    #calls: Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->access$000(Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is not current phone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;

    #setter for: Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->access$102(Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->getSummaryString(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
