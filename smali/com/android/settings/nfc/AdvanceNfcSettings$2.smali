.class Lcom/android/settings/nfc/AdvanceNfcSettings$2;
.super Landroid/database/ContentObserver;
.source "AdvanceNfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/AdvanceNfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/AdvanceNfcSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/AdvanceNfcSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings$2;->this$0:Lcom/android/settings/nfc/AdvanceNfcSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 458
    iget-object v1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings$2;->this$0:Lcom/android/settings/nfc/AdvanceNfcSettings;

    const-string v2, "advance_nfc_android_beam"

    invoke-virtual {v1, v2}, Lcom/android/settings/nfc/AdvanceNfcSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    .line 459
    .local v0, androidBeam:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v0, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings$2;->this$0:Lcom/android/settings/nfc/AdvanceNfcSettings;

    invoke-virtual {v1}, Lcom/android/settings/nfc/AdvanceNfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 462
    :cond_0
    return-void

    .line 460
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
