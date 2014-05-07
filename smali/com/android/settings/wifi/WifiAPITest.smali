.class public Lcom/android/settings/wifi/WifiAPITest;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "WifiAPITest.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field private static final KEY_DISABLE_NETWORK:Ljava/lang/String; = "disable_network"

.field private static final KEY_DISCONNECT:Ljava/lang/String; = "disconnect"

.field private static final KEY_ENABLE_NETWORK:Ljava/lang/String; = "enable_network"

.field private static final TAG:Ljava/lang/String; = "WifiAPITest"


# instance fields
.field private mWifiDisableNetwork:Lcom/htc/preference/HtcPreference;

.field private mWifiDisconnect:Lcom/htc/preference/HtcPreference;

.field private mWifiEnableNetwork:Lcom/htc/preference/HtcPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private netid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiAPITest;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiAPITest;->netid:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiAPITest;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/WifiAPITest;->netid:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private onCreatePreferences()V
    .locals 2

    const v1, 0x7f040116

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    const-string v1, "disconnect"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisconnect:Lcom/htc/preference/HtcPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisconnect:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    const-string v1, "disable_network"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisableNetwork:Lcom/htc/preference/HtcPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisableNetwork:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    const-string v1, "enable_network"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiEnableNetwork:Lcom/htc/preference/HtcPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiEnableNetwork:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiAPITest;->onCreatePreferences()V

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisconnect:Lcom/htc/preference/HtcPreference;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisableNetwork:Lcom/htc/preference/HtcPreference;

    if-ne p1, v2, :cond_2

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Input"

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const-string v2, "Enter Network ID"

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const-string v2, "Ok"

    new-instance v3, Lcom/android/settings/wifi/WifiAPITest$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/wifi/WifiAPITest$1;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const-string v2, "Cancel"

    new-instance v3, Lcom/android/settings/wifi/WifiAPITest$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiAPITest$2;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiEnableNetwork:Lcom/htc/preference/HtcPreference;

    if-ne p1, v2, :cond_0

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Input"

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const-string v2, "Enter Network ID"

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const-string v2, "Ok"

    new-instance v3, Lcom/android/settings/wifi/WifiAPITest$3;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/wifi/WifiAPITest$3;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const-string v2, "Cancel"

    new-instance v3, Lcom/android/settings/wifi/WifiAPITest$4;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiAPITest$4;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    const/4 v0, 0x0

    return v0
.end method
