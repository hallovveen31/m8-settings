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
    .parameter "context"
    .parameter "checkBoxPreference"
    .parameter "androidBeam"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    .line 69
    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    .line 70
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 72
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 78
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 95
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->isCMCCCustomizedNeed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const v1, 0x7f0c002d

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setTitle(I)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setSummary(I)V

    .line 90
    :goto_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 94
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    goto :goto_0

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setSummary(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method private disableNfcIfMDMLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNfcLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setChecked(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setEnabled(Z)V

    .line 137
    :cond_0
    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 5
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
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

    .line 167
    packed-switch p1, :pswitch_data_0

    .line 204
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->isCMCCCustomizedNeed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setSummary(I)V

    .line 211
    :goto_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->disableNfcIfMDMLocked()V

    .line 216
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setChecked(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    const v1, 0x7f0c0d23

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setChecked(Z)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    const v1, 0x7f0c0d21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    const v1, 0x7f0c0d22

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 189
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setChecked(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 196
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setChecked(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 167
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

    .prologue
    .line 98
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCmccSku()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->isChecked()Z

    move-result v0

    .line 154
    .local v0, desiredState:Z
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setEnabled(Z)V

    .line 155
    if-eqz v0, :cond_1

    .line 156
    const-string v1, "NfcEnabler"

    const-string v2, "Turn on NFC."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 163
    .end local v0           #desiredState:Z
    :cond_0
    :goto_0
    return-void

    .line 159
    .restart local v0       #desiredState:Z
    :cond_1
    const-string v1, "NfcEnabler"

    const-string v2, "Turn off NFC."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v0

    .line 145
    .local v0, nfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    if-eqz v0, :cond_0

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 102
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    .line 106
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    invoke-virtual {v2}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v1

    .line 108
    .local v1, nfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v1, p0}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setEnabled(Z)V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->disableNfcIfMDMLocked()V

    .line 116
    const-string v2, "DeviceManager3LM"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v0

    .line 118
    .local v0, dm:Landroid/os/IDeviceManager3LM;
    if-eqz v0, :cond_0

    .line 123
    :try_start_0
    invoke-interface {v0}, Landroid/os/IDeviceManager3LM;->getNfcState()I

    move-result v2

    if-nez v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setEnabled(Z)V

    .line 125
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;

    const v3, 0x7f0c0a56

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    goto :goto_0
.end method
