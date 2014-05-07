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

    .prologue
    .line 53
    const-class v0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;I)V
    .locals 2
    .parameter "fragment"
    .parameter "settingsIntent"
    .parameter "imm"
    .parameter "imi"
    .parameter "imiCount"

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput-object v1, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 65
    iput-object v1, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mDivider:Landroid/view/View;

    .line 67
    new-instance v0, Lcom/android/settings/inputmethod/HtcInputMethodPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference$1;-><init>(Lcom/android/settings/inputmethod/HtcInputMethodPreference;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mPrefOnclickListener:Lcom/android/settings/inputmethod/HtcToggleSwitch$OnBeforeCheckedChangeListener;

    .line 94
    const v0, 0x7f04008e

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->setLayoutResource(I)V

    .line 96
    iput-object p1, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    .line 97
    iput-object p2, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 98
    iput-object p3, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 99
    iput-object p4, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 100
    iput p5, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImiCount:I

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->updateSummary()V

    .line 102
    invoke-static {p4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mIsSystemIme:Z

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/HtcInputMethodPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mIsSystemIme:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/HtcInputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/HtcInputMethodPreference;Landroid/view/inputmethod/InputMethodInfo;Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/htc/preference/HtcCheckBoxPreference;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/HtcInputMethodPreference;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private saveImeSettings()V
    .locals 2

    .prologue
    .line 330
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/inputmethod/HtcInputMethodPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference$2;-><init>(Lcom/android/settings/inputmethod/HtcInputMethodPreference;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 343
    return-void
.end method

.method private showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 0
    .parameter "imi"
    .parameter "chkPref"

    .prologue
    .line 317
    return-void
.end method

.method public static startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "fragment"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method private updatePreferenceViews()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/inputmethod/HtcInputMethodPreference;Lcom/android/settings/inputmethod/HtcInputMethodPreference;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 325
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->isEnabled()Z

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
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    check-cast p1, Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    .end local p1
    check-cast p2, Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->compare(Lcom/android/settings/inputmethod/HtcInputMethodPreference;Lcom/android/settings/inputmethod/HtcInputMethodPreference;)I

    move-result v0

    return v0
.end method

.method public getSummaryString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 247
    const-string v5, "com.htc.sense.ime/.HTCIMEService"

    iget-object v6, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 248
    iget-object v5, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 260
    :goto_0
    return-object v5

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 252
    .local v4, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 253
    .local v2, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 254
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_1
    iget-object v5, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 258
    .local v3, subtypeLabel:Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 260
    .end local v2           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3           #subtypeLabel:Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/16 v1, 0x8

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->onBindView(Landroid/view/View;)V

    .line 110
    const v0, 0x7f090103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/HtcToggleSwitch;

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mInputMethodPref:Lcom/android/settings/inputmethod/HtcToggleSwitch;

    .line 112
    const v0, 0x7f0900a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mDivider:Landroid/view/View;

    .line 113
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mIsSystemIme:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mInputMethodPref:Lcom/android/settings/inputmethod/HtcToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/HtcToggleSwitch;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_0
    const v0, 0x7f090102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    .line 121
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mTitleText:Landroid/widget/TextView;

    .line 122
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    .line 181
    invoke-direct {p0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->updatePreferenceViews()V

    .line 183
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->isChecked()Z

    move-result v1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 284
    .local v0, needUpdate:Z
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->setChecked(Z)V

    .line 286
    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->saveImeSettings()V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->updateSummary()V

    .line 290
    :cond_0
    return-void

    .line 282
    .end local v0           #needUpdate:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->setEnabled(Z)V

    .line 189
    return-void
.end method

.method public updateSummary()V
    .locals 5

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, summary:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v3, "com.google.android.voicesearch/.ime.VoiceInputMethodService"

    iget-object v4, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    const-string v2, ""

    .line 271
    .local v2, voice_prefix:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0c22

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 275
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

    .line 277
    .end local v2           #voice_prefix:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 272
    .restart local v2       #voice_prefix:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_1
.end method
