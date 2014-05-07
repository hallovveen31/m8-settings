.class public Lcom/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcEnabler"


# instance fields
.field private final mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

.field private final mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->isCMCCCustomizedNeed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const v1, 0x7f0c002d

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method private disableNfcIfMDMLocked()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNfcLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNfcStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->isCMCCCustomizedNeed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->disableNfcIfMDMLocked()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    const v1, 0x7f0c0d23

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    const v1, 0x7f0c0d21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    const v1, 0x7f0c0d22

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private isCMCCCustomizedNeed()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCmccSku()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    if-eqz v0, :cond_1

    const-string v1, "NfcEnabler"

    const-string v2, "Turn on NFC."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "NfcEnabler"

    const-string v2, "Turn off NFC."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v2}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->disableNfcIfMDMLocked()V

    const-string v2, "DeviceManager3LM"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/os/IDeviceManager3LM;->getNfcState()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const v3, 0x7f0c0a56

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
