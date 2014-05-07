.class Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;
.super Lcom/htc/preference/HtcPreference;
.source "WifiOffloadSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiOffloadSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHtcPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiOffloadSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiOffloadSettingsFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;->this$0:Lcom/android/settings/wifi/WifiOffloadSettingsFragment;

    invoke-direct {p0, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;->this$0:Lcom/android/settings/wifi/WifiOffloadSettingsFragment;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefTapNetwork:Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;->this$0:Lcom/android/settings/wifi/WifiOffloadSettingsFragment;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefTapNetwork:Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;->this$0:Lcom/android/settings/wifi/WifiOffloadSettingsFragment;

    iget v2, v2, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPreTapResId:I

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;->this$0:Lcom/android/settings/wifi/WifiOffloadSettingsFragment;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefTapNetwork:Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "WifiOffloadSettingsFragment"

    const-string v2, "onBindView, getTitleView == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
