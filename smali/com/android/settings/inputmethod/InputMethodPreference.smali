.class public Lcom/android/settings/inputmethod/InputMethodPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "InputMethodPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/preference/HtcCheckBoxPreference;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/inputmethod/InputMethodPreference;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISABLED_ALPHA:F = 0.4f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAlwaysChecked:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private final mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodPref:Landroid/view/View;

.field private mInputMethodSettingsButton:Landroid/view/View;

.field private final mIsSystemIme:Z

.field private final mPrefOnclickListener:Landroid/view/View$OnClickListener;

.field private final mSettingsIntent:Landroid/content/Intent;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;I)V
    .locals 3
    .parameter "fragment"
    .parameter "settingsIntent"
    .parameter "imm"
    .parameter "imi"
    .parameter "imiCount"

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f008e

    invoke-direct {p0, v0, v2, v1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 66
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$1;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    .line 87
    const v0, 0x7f0400c3

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setLayoutResource(I)V

    .line 88
    const v0, 0x7f0400c4

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setWidgetLayoutResource(I)V

    .line 89
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    .line 90
    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 91
    iput-object p3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 92
    iput-object p4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updateSummary()V

    .line 94
    invoke-virtual {p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p4, v0, p5}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mAlwaysChecked:Z

    .line 96
    invoke-static {p4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mAlwaysChecked:Z

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setEnabled(Z)V

    .line 100
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/InputMethodPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/InputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/InputMethodPreference;Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings/inputmethod/InputMethodPreference;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/inputmethod/InputMethodPreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private replaceWithSesne40Selector(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "list_selector_background"

    const v2, 0x1080062

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    return-void
.end method

.method private saveImeSettings()V
    .locals 5

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 310
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 7
    .parameter "imi"
    .parameter "chkPref"

    .prologue
    const/4 v3, 0x1

    .line 268
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 271
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/inputmethod/InputMethodPreference$6;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/inputmethod/InputMethodPreference$6;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/inputmethod/InputMethodPreference$5;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$5;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 289
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0fe7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 293
    return-void
.end method

.method public static startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7
    .parameter "fragment"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    const/4 v3, 0x0

    .line 214
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    .line 216
    .local v0, preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 218
    const/4 v3, 0x1

    .line 223
    .end local v0           #preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    :goto_0
    return v3

    .line 220
    :cond_0
    sget-object v1, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", requestCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePreferenceViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    .line 187
    .local v0, checked:Z
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 189
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 190
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 191
    if-nez v0, :cond_0

    .line 192
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    const v3, 0x3ecccccd

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 201
    :cond_2
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 202
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 203
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v1

    .line 205
    .local v1, enabled:Z
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    if-nez v1, :cond_3

    .line 207
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 210
    .end local v1           #enabled:Z
    :cond_3
    return-void

    .line 205
    .restart local v1       #enabled:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/android/settings/inputmethod/InputMethodPreference;)I
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 298
    iget-object v0, p1, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 301
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    check-cast p1, Lcom/android/settings/inputmethod/InputMethodPreference;

    .end local p1
    check-cast p2, Lcom/android/settings/inputmethod/InputMethodPreference;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/InputMethodPreference;->compare(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/android/settings/inputmethod/InputMethodPreference;)I

    move-result v0

    return v0
.end method

.method public getSummaryString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 230
    .local v4, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 231
    .local v2, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 232
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 236
    .local v3, subtypeLabel:Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 238
    .end local v2           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3           #subtypeLabel:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v0, 0x1

    .line 113
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 114
    const v3, 0x7f090103

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    .line 115
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v3, 0x7f090102

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    .line 117
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    .line 118
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    .line 119
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-le v3, v0, :cond_3

    .line 120
    .local v0, hasSubtypes:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, imiId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 122
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    new-instance v4, Lcom/android/settings/inputmethod/InputMethodPreference$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference$2;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 134
    :cond_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 135
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    new-instance v4, Lcom/android/settings/inputmethod/InputMethodPreference$3;

    invoke-direct {v4, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$3;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_1
    if-eqz v0, :cond_2

    .line 154
    new-instance v2, Lcom/android/settings/inputmethod/InputMethodPreference$4;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference$4;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;Ljava/lang/String;)V

    .line 164
    .local v2, listener:Landroid/view/View$OnLongClickListener;
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 166
    .end local v2           #listener:Landroid/view/View$OnLongClickListener;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v3, :cond_4

    .line 167
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :goto_1
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/settings/inputmethod/InputMethodPreference;->replaceWithSesne40Selector(Landroid/view/View;)V

    .line 174
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/settings/inputmethod/InputMethodPreference;->replaceWithSesne40Selector(Landroid/view/View;)V

    .line 177
    return-void

    .line 119
    .end local v0           #hasSubtypes:Z
    .end local v1           #imiId:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    .restart local v0       #hasSubtypes:Z
    .restart local v1       #imiId:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setChecked(ZZ)V

    .line 265
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 0
    .parameter "checked"
    .parameter "save"

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 256
    if-eqz p2, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->saveImeSettings()V

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updateSummary()V

    .line 260
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 183
    return-void
.end method

.method public updateSummary()V
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, summary:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
