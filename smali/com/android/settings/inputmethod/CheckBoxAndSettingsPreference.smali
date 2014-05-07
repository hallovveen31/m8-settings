.class public Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "CheckBoxAndSettingsPreference.java"


# static fields
.field private static final DISABLED_ALPHA:F = 0.4f


# instance fields
.field private mCheckBox:Landroid/view/View;

.field private mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

.field private mSettingsButton:Landroid/widget/ImageView;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const v0, 0x7f0400c3

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->setLayoutResource(I)V

    .line 46
    const v0, 0x7f0400c4

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->setWidgetLayoutResource(I)V

    .line 47
    return-void
.end method

.method private enableSettingsButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 115
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v1, :cond_3

    .line 117
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 134
    :cond_2
    return-void

    .line 119
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->isChecked()Z

    move-result v0

    .line 120
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 122
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 123
    if-nez v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method private replaceWithSesne40Selector(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "list_selector_background"

    const v2, 0x1080062

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 61
    const v1, 0x7f090103

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, textLayout:Landroid/view/View;
    new-instance v1, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$1;-><init>(Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v1, 0x7f090102

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    .line 71
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    .line 72
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    .line 73
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$2;-><init>(Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-direct {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->enableSettingsButton()V

    .line 83
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->replaceWithSesne40Selector(Landroid/view/View;)V

    .line 84
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->replaceWithSesne40Selector(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method protected onCheckBoxClicked()V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->setChecked(Z)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSettingsButtonClicked()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 112
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->enableSettingsButton()V

    .line 93
    return-void
.end method

.method public setFragmentIntent(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter "fragment"
    .parameter "intent"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    .line 97
    iput-object p2, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 98
    return-void
.end method
