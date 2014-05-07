.class public Lcom/android/settings/wifi/CWAccountInfo;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "CWAccountInfo.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final KEY_USER_DEFINED_IP:Ljava/lang/String; = "user_defined_ip"

.field private static final KEY_WAG_IP:Ljava/lang/String; = "wag_ip"

.field private static final TAG:Ljava/lang/String; = "CWAccountInfo"


# instance fields
.field private mUserDefinedIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/wifi/CWAccountInfo;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 9

    const/16 v8, 0x2e

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    :try_start_0
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v6, 0xff

    if-gt v0, v6, :cond_1

    if-ltz v0, :cond_1

    sub-int v6, v2, v4

    const/4 v7, 0x3

    if-le v6, v7, :cond_2

    :cond_1
    :goto_1
    return v5

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v6, 0x4

    if-ne v3, v6, :cond_1

    const-string v6, "."

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget-boolean v1, Lcom/android/settings/wifi/CWAccountInfo;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "user_defined_ip"

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/CWAccountInfo;->mUserDefinedIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/CWAccountInfo;->mUserDefinedIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    const-string v1, "wag_ip"

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "parent"

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    const-string v1, "wag_ip_title"

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    const-string v1, "user_defined_ip"

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    const-string v1, "wag_ip"

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/CWAccountInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "user_defined_ip"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p0, Lcom/android/settings/wifi/CWAccountInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWagAsUserDefined(Landroid/net/wifi/WifiManager;Z)Z

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "wag_ip"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/CWAccountInfo;->isIpAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0da2

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/wifi/CWAccountInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWagAddress(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    sget-boolean v3, Lcom/android/settings/wifi/CWAccountInfo;->DBG:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/CWAccountInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWagAsUserDefined(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    iget-object v3, p0, Lcom/android/settings/wifi/CWAccountInfo;->mUserDefinedIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    const-string v3, "wag_ip"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/CWAccountInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWagAddress(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v3, 0x7f0c0886

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method
