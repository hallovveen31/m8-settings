.class public Lcom/android/settings/accounts/OptionTogglePreference;
.super Landroid/preference/CheckBoxPreference;
.source "OptionTogglePreference.java"


# instance fields
.field private mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/accounts/OptionTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/OptionTogglePreference;)Lcom/htc/widget/HtcToggleButtonLight;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/OptionTogglePreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    return-object v0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f09003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcToggleButtonLight;

    iput-object v0, p0, Lcom/android/settings/accounts/OptionTogglePreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    iget-object v0, p0, Lcom/android/settings/accounts/OptionTogglePreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/accounts/OptionTogglePreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    new-instance v1, Lcom/android/settings/accounts/OptionTogglePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/OptionTogglePreference$1;-><init>(Lcom/android/settings/accounts/OptionTogglePreference;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    return-void
.end method

.method protected onClick()V
    .locals 1

    invoke-super {p0}, Landroid/preference/TwoStatePreference;->onClick()V

    iget-object v0, p0, Lcom/android/settings/accounts/OptionTogglePreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight;->performClick()Z

    return-void
.end method
