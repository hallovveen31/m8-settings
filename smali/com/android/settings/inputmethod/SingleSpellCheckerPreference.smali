.class public Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;
.super Lcom/htc/preference/HtcPreference;
.source "SingleSpellCheckerPreference.java"


# static fields
.field private static final DBG:Z = false

.field private static final DISABLED_ALPHA:F = 0.4f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private final mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

.field private mPrefAll:Landroid/view/View;

.field private mPrefLeftButton:Landroid/view/View;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRes:Landroid/content/res/Resources;

.field private mSelected:Z

.field private mSettingsButton:Landroid/view/View;

.field private mSettingsIntent:Landroid/content/Intent;

.field private final mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

.field private mSubtypeButton:Landroid/widget/ImageView;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private final mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/content/Intent;Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/TextServicesManager;)V
    .locals 4
    .parameter "fragment"
    .parameter "settingsIntent"
    .parameter "sci"
    .parameter "tsm"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 64
    iput-object p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .line 65
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRes:Landroid/content/res/Resources;

    .line 66
    iput-object p4, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 67
    const v1, 0x7f0400ca

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->setLayoutResource(I)V

    .line 68
    iput-object p3, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    .line 69
    iput-boolean v3, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSelected:Z

    .line 70
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, settingsActivity:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onLeftButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onSubtypeButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onSettingsButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/TextServicesManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method private enableButtons(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/16 v2, 0x8

    const v1, 0x3ecccccd

    .line 210
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    :cond_1
    :goto_1
    return-void

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 217
    if-nez p1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 229
    if-nez p1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1
.end method

.method private onLeftButtonClicked(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z

    .line 131
    return-void
.end method

.method private onSettingsButtonClicked(Landroid/view/View;)V
    .locals 9
    .parameter "arg0"

    .prologue
    const/4 v8, 0x1

    .line 198
    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iget-object v3, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    const v3, 0x7f0c0feb

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    iget-object v7, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v7}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, msg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private onSubtypeButtonClicked(Landroid/view/View;)V
    .locals 12
    .parameter "arg0"

    .prologue
    const/4 v11, 0x0

    .line 150
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 151
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 153
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v8}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v8, 0x7f0c0fdd

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 155
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v6

    .line 156
    .local v6, size:I
    add-int/lit8 v8, v6, 0x1

    new-array v4, v8, [Ljava/lang/CharSequence;

    .line 157
    .local v4, items:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0c1023

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v11

    .line 158
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 159
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    .line 160
    .local v7, subtype:Landroid/view/textservice/SpellCheckerSubtype;
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v8}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v10}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 163
    .local v5, label:Ljava/lang/CharSequence;
    add-int/lit8 v8, v3, 0x1

    aput-object v5, v4, v8

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    .end local v5           #label:Ljava/lang/CharSequence;
    .end local v7           #subtype:Landroid/view/textservice/SpellCheckerSubtype;
    :cond_1
    const/4 v1, 0x0

    .line 168
    .local v1, checkedItem:I
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8, v11}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v2

    .line 169
    .local v2, currentScs:Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v2, :cond_2

    .line 170
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_2

    .line 171
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 172
    add-int/lit8 v1, v3, 0x1

    .line 177
    :cond_2
    new-instance v8, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$4;

    invoke-direct {v8, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$4;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v4, v1, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 193
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 194
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 195
    return-void

    .line 170
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private replaceWithSesne40Selector(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "list_selector_background"

    const v2, 0x1080062

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    return-void
.end method

.method private updateSelectedState(Z)V
    .locals 1
    .parameter "selected"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefAll:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 140
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->enableButtons(Z)V

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 92
    const v0, 0x7f090104

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefAll:Landroid/view/View;

    .line 93
    const v0, 0x7f090106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 94
    const v0, 0x7f090105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$1;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTitleText:Landroid/widget/TextView;

    .line 103
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSummaryText:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f090196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f090194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$3;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$3;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSelected:Z

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->updateSelectedState(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->replaceWithSesne40Selector(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->replaceWithSesne40Selector(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->replaceWithSesne40Selector(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSelected:Z

    .line 146
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->updateSelectedState(Z)V

    .line 147
    return-void
.end method
