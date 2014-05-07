.class public Lcom/android/settings/nfc/RwP2pEnabler;
.super Ljava/lang/Object;
.source "RwP2pEnabler.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

.field private final mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/nfc/RwP2pEnabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/nfc/RwP2pEnabler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcCheckBoxPreference;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/nfc/RwP2pEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/RwP2pEnabler$1;-><init>(Lcom/android/settings/nfc/RwP2pEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object p3, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/RwP2pEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/RwP2pEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/settings/nfc/RwP2pEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get new state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/nfc/RwP2pEnabler;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/nfc/RwP2pEnabler;->isRWEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/nfc/RwP2pEnabler;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isP2PEnabled()Z

    move-result v0

    return v0
.end method

.method private isRWEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isReaderWriterEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableReaderWriter()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableP2P()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    sget-object v2, Lcom/android/settings/nfc/RwP2pEnabler;->TAG:Ljava/lang/String;

    const-string v4, "enable failed"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/settings/nfc/RwP2pEnabler;->TAG:Ljava/lang/String;

    const-string v5, "enable successfully"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disableReaderWriter()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disableP2P()Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    :goto_2
    if-nez v1, :cond_6

    sget-object v4, Lcom/android/settings/nfc/RwP2pEnabler;->TAG:Ljava/lang/String;

    const-string v5, "disable failed"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/android/settings/nfc/RwP2pEnabler;->TAG:Ljava/lang/String;

    const-string v4, "disable successfully"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/RwP2pEnabler;->handleNfcStateChanged(I)V

    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
