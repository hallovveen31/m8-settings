.class Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;
.super Landroid/telephony/PhoneStateListener;
.source "HtcAboutPhoneNetworkDualMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChangedExt(II)V
    .locals 10

    const v9, 0x7f0c0b48

    const-string v6, "HtcAboutPhoneNetworkDualMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDataConnectionStateChangedExt, state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", phoneType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mIsForeground:Z
    invoke-static {v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->access$000(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainNetworkTypePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->access$100(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubNetworkTypePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->access$200(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v2, "gsm.network.type"

    const/4 v6, 0x1

    if-ne p2, v6, :cond_6

    const-string v2, "gsm.gsm.network.type"

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v6, "phonetype"

    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v6

    const-string v7, "getDataNetworkTypeExt"

    invoke-virtual {v6, v7, v0}, Lcom/htc/telephony/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "getDataNetworkTypeExt"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v6

    const-string v7, "getVoiceNetworkTypeExt"

    invoke-virtual {v6, v7, v0}, Lcom/htc/telephony/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "getVoiceNetworkTypeExt"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_2
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v6, "Unknown"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_4
    const-string v6, "HtcAboutPhoneNetworkDualMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phoneType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,networkType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getCTNetwrokTypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainNetworkTypePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->access$100(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainPhoneType:I
    invoke-static {v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->access$300(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)I

    move-result v6

    if-ne v6, p2, :cond_8

    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainNetworkTypePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->access$100(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    const/4 v6, 0x5

    if-ne p2, v6, :cond_7

    const-string v2, "gsm.sub.network.type"

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x2

    if-ne p2, v6, :cond_1

    const-string v2, "gsm.cdma.network.type"

    goto/16 :goto_1

    :cond_8
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubNetworkTypePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->access$200(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubPhoneType:I
    invoke-static {v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->access$400(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)I

    move-result v6

    if-ne v6, p2, :cond_9

    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubNetworkTypePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->access$200(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    const-string v6, "HtcAboutPhoneNetworkDualMode"

    const-string v7, "NetworkType preference is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    .locals 5

    const-string v2, "HtcAboutPhoneNetworkDualMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceStateChangedExt, state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mIsForeground:Z
    invoke-static {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->access$000(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    invoke-virtual {v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorNameExt(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "HtcAboutPhoneNetworkDualMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , operatorName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    invoke-virtual {v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0b48

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainOperatorNamePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainPhoneType:I
    invoke-static {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->access$300(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)I

    move-result v2

    if-ne v2, p2, :cond_2

    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mMainOperatorNamePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubOperatorNamePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->access$600(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubPhoneType:I
    invoke-static {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->access$400(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)I

    move-result v2

    if-ne v2, p2, :cond_3

    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode$1;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->mSubOperatorNamePreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;->access$600(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetworkDualMode;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string v2, "HtcAboutPhoneNetworkDualMode"

    const-string v3, "OperatorName preference is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
