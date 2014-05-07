.class public Lcom/android/settings/inputmethod/HtcInputMethodPreference;
.super Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;
.source "HtcInputMethodPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/inputmethod/HtcInputMethodPreference;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISABLED_ALPHA:F = 0.4f

.field static final GV_IMI_ID:Ljava/lang/String; = "com.google.android.voicesearch/.ime.VoiceInputMethodService"

.field static final HTCIME_IMI_ID:Ljava/lang/String; = "com.htc.sense.ime/.HTCIMEService"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mDivider:Landroid/view/View;

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mImiCount:I

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodPref:Lcom/android/settings/inputmethod/HtcToggleSwitch;

.field private mInputMethodSettingsButton:Landroid/view/View;

.field private final mIsSystemIme:Z

.field private final mPrefOnclickListener:Lcom/android/settings/inputmethod/HtcToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mDivider:Landroid/view/View;

    new-instance v0, Lcom/android/settings/inputmethod/HtcInputMethodPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference$1;-><init>(Lcom/android/settings/inputmethod/HtcInputMethodPreference;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mPrefOnclickListener:Lcom/android/settings/inputmethod/HtcToggleSwitch$OnBeforeCheckedChangeListener;

    const v0, 0x7f04008e

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p4, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iput p5, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImiCount:I

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->updateSummary()V

    invoke-static {p4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mIsSystemIme:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/HtcInputMethodPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mIsSystemIme:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/HtcInputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/HtcInputMethodPreference;Landroid/view/inputmethod/InputMethodInfo;Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/htc/preference/HtcCheckBoxPreference;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/HtcInputMethodPreference;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private saveImeSettings()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/inputmethod/HtcInputMethodPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference$2;-><init>(Lcom/android/settings/inputmethod/HtcInputMethodPreference;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 0

    return-void
.end method

.method public static startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private updatePreferenceViews()V
    .locals 0

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/inputmethod/HtcInputMethodPreference;Lcom/android/settings/inputmethod/HtcInputMethodPreference;)I
    .locals 1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    check-cast p2, Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->compare(Lcom/android/settings/inputmethod/HtcInputMethodPreference;Lcom/android/settings/inputmethod/HtcInputMethodPreference;)I

    move-result v0

    return v0
.end method

.method public getSummaryString()Ljava/lang/String;
    .locals 8

    const-string v5, "com.htc.sense.ime/.HTCIMEService"

    iget-object v6, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v5, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    const/16 v1, 0x8

    invoke-super {p0, p1}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f090103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/HtcToggleSwitch;

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mInputMethodPref:Lcom/android/settings/inputmethod/HtcToggleSwitch;

    const v0, 0x7f0900a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mDivider:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mIsSystemIme:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mInputMethodPref:Lcom/android/settings/inputmethod/HtcToggleSwitch;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f090102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->updatePreferenceViews()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->saveImeSettings()V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->updateSummary()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->setEnabled(Z)V

    return-void
.end method

.method public updateSummary()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "com.google.android.voicesearch/.ime.VoiceInputMethodService"

    iget-object v4, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, ""

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0c22

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, ""

    goto :goto_1
.end method
