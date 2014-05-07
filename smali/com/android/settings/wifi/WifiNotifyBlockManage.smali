.class public Lcom/android/settings/wifi/WifiNotifyBlockManage;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "WifiNotifyBlockManage.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiNotifyBlockManage"

.field private static final UNBLOCK_DIALOG:I = 0x3e9


# instance fields
.field private mBlockedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSsid:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiNotifyBlockManage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNotifyBlockManage;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiNotifyBlockManage;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNotifyBlockManage;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiNotifyBlockManage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNotifyBlockManage;->updateList()V

    return-void
.end method

.method private updateList()V
    .locals 6

    .prologue
    .line 83
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNotifyBlockManage;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getOpenNetworkBlockedList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiNotifyBlockManage;->mBlockedList:Ljava/util/List;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNotifyBlockManage;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 85
    .local v3, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 86
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setOrderingAsAdded(Z)V

    .line 88
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNotifyBlockManage;->mBlockedList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 89
    new-instance v2, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNotifyBlockManage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 90
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNotifyBlockManage;->mBlockedList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v2}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "ssid"

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNotifyBlockManage;->mBlockedList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 95
    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f0c0d99

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiNotifyBlockManage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNotifyBlockManage;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 37
    const v0, 0x7f060059

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiNotifyBlockManage;->addPreferencesFromResource(I)V

    .line 38
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    const/4 v0, 0x0

    .line 50
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 52
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNotifyBlockManage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNotifyBlockManage;->mSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c07ed

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0f8a

    new-instance v3, Lcom/android/settings/wifi/WifiNotifyBlockManage$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiNotifyBlockManage$1;-><init>(Lcom/android/settings/wifi/WifiNotifyBlockManage;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0f8b

    invoke-virtual {v1, v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 69
    :cond_0
    return-object v0
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getOrder()I

    move-result v0

    .line 74
    .local v0, order:I
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->peekExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 75
    .local v1, value:Landroid/os/Bundle;
    const-string v2, "ssid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiNotifyBlockManage;->mSsid:Ljava/lang/String;

    .line 77
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNotifyBlockManage;->mSsid:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/16 v2, 0x3e9

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiNotifyBlockManage;->showDialog(I)V

    .line 79
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNotifyBlockManage;->updateList()V

    .line 45
    return-void
.end method
