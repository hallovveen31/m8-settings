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

    .prologue
    .line 18
    const-class v0, Lcom/android/settings/nfc/RwP2pEnabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/nfc/RwP2pEnabler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcCheckBoxPreference;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 2
    .parameter "context"
    .parameter "checkBoxPreference"
    .parameter "androidBeam"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/android/settings/nfc/RwP2pEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/RwP2pEnabler$1;-><init>(Lcom/android/settings/nfc/RwP2pEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    iput-object p1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 39
    iput-object p3, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    .line 40
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 42
    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/RwP2pEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/RwP2pEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 5
    .parameter "newState"

    .prologue
    const/4 v4, 0x0

    .line 118
    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-nez v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 121
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

    .line 122
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 126
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 131
    invoke-direct {p0}, Lcom/android/settings/nfc/RwP2pEnabler;->isEnabled()Z

    move-result v0

    .line 132
    .local v0, isRwP2pEnable:Z
    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 122
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

    .prologue
    .line 51
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

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isP2PEnabled()Z

    move-result v0

    return v0
.end method

.method private isRWEnabled()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isReaderWriterEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 86
    iget-object v4, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-nez v4, :cond_1

    .line 114
    .end local p2
    :cond_0
    :goto_0
    return v3

    .line 89
    .restart local p2
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 91
    .local v0, desiredState:Z
    const/4 v1, 0x0

    .line 92
    .local v1, result:Z
    if-eqz v0, :cond_4

    .line 93
    iget-object v4, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableReaderWriter()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableP2P()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 94
    :goto_1
    if-nez v1, :cond_3

    .line 95
    sget-object v2, Lcom/android/settings/nfc/RwP2pEnabler;->TAG:Ljava/lang/String;

    const-string v4, "enable failed"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 93
    goto :goto_1

    .line 98
    :cond_3
    sget-object v4, Lcom/android/settings/nfc/RwP2pEnabler;->TAG:Ljava/lang/String;

    const-string v5, "enable successfully"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v4, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 100
    iget-object v4, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 103
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

    .line 104
    :goto_2
    if-nez v1, :cond_6

    .line 105
    sget-object v4, Lcom/android/settings/nfc/RwP2pEnabler;->TAG:Ljava/lang/String;

    const-string v5, "disable failed"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v4, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_5
    move v1, v3

    .line 103
    goto :goto_2

    .line 108
    :cond_6
    sget-object v2, Lcom/android/settings/nfc/RwP2pEnabler;->TAG:Ljava/lang/String;

    const-string v4, "disable successfully"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 110
    iget-object v2, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/RwP2pEnabler;->handleNfcStateChanged(I)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/nfc/RwP2pEnabler;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
