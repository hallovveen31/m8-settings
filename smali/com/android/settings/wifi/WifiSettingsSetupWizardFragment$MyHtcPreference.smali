.class Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;
.super Lcom/android/settings/wifi/AccessPoint;
.source "WifiSettingsSetupWizardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHtcPreference"
.end annotation


# instance fields
.field final NO_SECURITY:I

.field private mCompare:I

.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;Landroid/content/Context;I)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    iput v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;->NO_SECURITY:I

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput p3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;->mCompare:I

    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/preference/HtcPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;->mCompare:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;->compareTo(Lcom/htc/preference/HtcPreference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
