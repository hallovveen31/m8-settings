.class public Lcom/android/settings/inputmethod/SpellCheckersSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "SpellCheckersSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

.field private final mSpellCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckers:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updateScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/SpellCheckersSettings;Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)V

    return-void
.end method

.method private changeCurrentSpellChecker(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)V
    .locals 2
    .parameter "scp"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updateScreen()V

    .line 159
    return-void
.end method

.method private static isSystemApp(Landroid/view/textservice/SpellCheckerInfo;)Z
    .locals 1
    .parameter "sci"

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveState()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/SpellCheckerUtils;->setCurrentSpellChecker(Landroid/view/textservice/TextServicesManager;Landroid/view/textservice/SpellCheckerInfo;)V

    .line 76
    return-void
.end method

.method private showSecurityWarnDialog(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)V
    .locals 7
    .parameter "scp"

    .prologue
    const/4 v3, 0x1

    .line 125
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 128
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 146
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0fe8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 150
    return-void
.end method

.method private updateEnabledSpellCheckers()V
    .locals 6

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 85
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-static {v4}, Lcom/android/settings/inputmethod/SpellCheckerUtils;->getCurrentSpellChecker(Landroid/view/textservice/TextServicesManager;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 86
    iget-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-static {v4}, Lcom/android/settings/inputmethod/SpellCheckerUtils;->getEnabledSpellCheckers(Landroid/view/textservice/TextServicesManager;)[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    .line 87
    iget-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    if-nez v4, :cond_1

    .line 104
    :cond_0
    return-void

    .line 90
    :cond_1
    iget-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 91
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 92
    iget-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v3, v4, v0

    .line 93
    .local v3, sci:Landroid/view/textservice/SpellCheckerInfo;
    new-instance v2, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-direct {v2, p0, v4, v3, v5}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/content/Intent;Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/TextServicesManager;)V

    .line 95
    .local v2, scPref:Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;
    iget-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v3, v1}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2, v4}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->setSelected(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 100
    invoke-virtual {v2, p0}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 101
    invoke-direct {p0, v2, v3}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updateSummary(Lcom/htc/preference/HtcPreference;Landroid/view/textservice/SpellCheckerInfo;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private updateScreen()V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 80
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updateEnabledSpellCheckers()V

    .line 81
    return-void
.end method

.method private updateSummary(Lcom/htc/preference/HtcPreference;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 5
    .parameter "preference"
    .parameter "sci"

    .prologue
    .line 188
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v2}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 189
    .local v0, c_sci:Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 197
    .local v1, subtype:Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 172
    const v0, 0x7f0c02e4

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string v0, "textservices"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 53
    const v0, 0x7f060045

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->addPreferencesFromResource(I)V

    .line 54
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updateScreen()V

    .line 55
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 71
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->saveState()V

    .line 72
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 177
    instance-of v1, p1, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 178
    check-cast v1, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;

    invoke-virtual {v1}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 179
    .local v0, sci:Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updateSummary(Lcom/htc/preference/HtcPreference;Landroid/view/textservice/SpellCheckerInfo;)V

    .line 183
    .end local v0           #sci:Landroid/view/textservice/SpellCheckerInfo;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "pref"

    .prologue
    .line 108
    const/4 v2, 0x0

    .line 109
    .local v2, targetScp:Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;

    .line 110
    .local v1, scp:Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    move-object v2, v1

    goto :goto_0

    .line 114
    .end local v1           #scp:Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;
    :cond_1
    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {v2}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->isSystemApp(Landroid/view/textservice/SpellCheckerInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 116
    invoke-direct {p0, v2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->showSecurityWarnDialog(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)V

    .line 121
    :cond_2
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 118
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 65
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updateScreen()V

    .line 66
    return-void
.end method
