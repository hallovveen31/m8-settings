.class Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;
.super Landroid/telephony/PhoneStateListener;
.source "HtcAboutPhoneNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mIsForeground:Z
    invoke-static {v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$400(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mNetworkTypePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->getNetworkTypeString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, networkType:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getCTNetwrokTypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mNetworkTypePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 447
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mIsForeground:Z
    invoke-static {v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$400(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mOperatorNamePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$600(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 453
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCombinedRegState()I

    move-result v3

    if-nez v3, :cond_6

    .line 456
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, operatorName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, operatorPlmn:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 462
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 464
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mOperatorNamePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$600(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 480
    .end local v1           #operatorName:Ljava/lang/String;
    .end local v2           #operatorPlmn:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mNetworkTypePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 481
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    invoke-virtual {v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->getNetworkTypeString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, networkType:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 486
    invoke-static {v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getCTNetwrokTypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    :cond_3
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mNetworkTypePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 469
    .end local v0           #networkType:Ljava/lang/String;
    .restart local v1       #operatorName:Ljava/lang/String;
    .restart local v2       #operatorPlmn:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mOperatorNamePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$600(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 472
    :cond_5
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mOperatorNamePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$600(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 475
    .end local v1           #operatorName:Ljava/lang/String;
    .end local v2           #operatorPlmn:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mOperatorNamePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$600(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    const v4, 0x7f0c0b48

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 5
    .parameter "signalStrength"

    .prologue
    .line 495
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mIsForeground:Z
    invoke-static {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$400(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mNetworkTypePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    invoke-virtual {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->getNetworkTypeString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, networkType:Ljava/lang/String;
    const-string v2, "HtcAboutPhoneStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sglte = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->IS_SGLTE_MODEM:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSingleSimDualSignalTdscdma() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->isSingleSimDualSignalTdscdma()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    sget-boolean v2, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->IS_SGLTE_MODEM:Z

    if-eqz v2, :cond_3

    .line 503
    const-string v2, "gsm.data.network.type.TD"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, networkTypeTD:Ljava/lang/String;
    const-string v2, "1"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 505
    const-string v0, "TD"

    .line 514
    .end local v1           #networkTypeTD:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mNetworkTypePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 508
    :cond_3
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->isSingleSimDualSignalTdscdma()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 509
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getTDRscp()I

    move-result v2

    if-lez v2, :cond_4

    .line 510
    const-string v0, "TD"

    .line 512
    :cond_4
    const-string v2, "HtcAboutPhoneStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
