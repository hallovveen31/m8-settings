.class public Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcSingleSpellCheckerPreference.java"


# static fields
.field private static final DBG:Z = false

.field private static final DISABLED_ALPHA:F = 0.4f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private final mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

.field private mListItemHeight:I

.field private mPrefAll:Landroid/view/View;

.field private mPrefLeftButton:Landroid/view/View;

.field private mRadioButton:Lcom/htc/widget/HtcRadioButton;

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
    .line 44
    const-class v0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->TAG:Ljava/lang/String;

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

    .line 66
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, v3, v2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 62
    iput v2, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mListItemHeight:I

    .line 67
    iput-object p1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .line 68
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mRes:Landroid/content/res/Resources;

    .line 69
    iput-object p4, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 70
    const v1, 0x7f04008f

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->setLayoutResource(I)V

    .line 71
    iput-object p3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    .line 72
    iput-boolean v2, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSelected:Z

    .line 73
    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, settingsActivity:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "HtcListItemHeight"

    invoke-static {v1, v2}, Lcom/htc/widget/HtcProperty;->getProperty(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mListItemHeight:I

    .line 81
    return-void

    .line 78
    :cond_0
    iput-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->onLeftButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)Landroid/view/textservice/TextServicesManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->onSettingsButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method private enableButtons(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 226
    :cond_0
    :goto_0
    const-string v0, "543"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSettingsIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$3;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$3;-><init>(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 251
    :cond_1
    return-void

    .line 220
    :cond_2
    if-nez p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private onLeftButtonClicked(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z

    .line 139
    return-void
.end method

.method private onSettingsButtonClicked(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->startActivity(Landroid/content/Intent;)V

    .line 210
    :cond_0
    return-void
.end method

.method private onSubtypeButtonClicked(Landroid/view/View;)V
    .locals 12
    .parameter "arg0"

    .prologue
    const/4 v11, 0x0

    .line 158
    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 159
    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 161
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v8}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v8, 0x7f0c00b0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 163
    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v6

    .line 164
    .local v6, size:I
    add-int/lit8 v8, v6, 0x1

    new-array v4, v8, [Ljava/lang/CharSequence;

    .line 165
    .local v4, items:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0c1023

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v11

    .line 166
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 167
    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    .line 168
    .local v7, subtype:Landroid/view/textservice/SpellCheckerSubtype;
    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v8}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v10}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 171
    .local v5, label:Ljava/lang/CharSequence;
    add-int/lit8 v8, v3, 0x1

    aput-object v5, v4, v8

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    .end local v5           #label:Ljava/lang/CharSequence;
    .end local v7           #subtype:Landroid/view/textservice/SpellCheckerSubtype;
    :cond_1
    const/4 v1, 0x0

    .line 176
    .local v1, checkedItem:I
    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8, v11}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v2

    .line 177
    .local v2, currentScs:Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v2, :cond_2

    .line 178
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_2

    .line 179
    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 180
    add-int/lit8 v1, v3, 0x1

    .line 185
    :cond_2
    new-instance v8, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$2;

    invoke-direct {v8, p0}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$2;-><init>(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)V

    invoke-virtual {v0, v4, v1, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 202
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 203
    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 204
    return-void

    .line 178
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateSelectedState(Z)V
    .locals 1
    .parameter "selected"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mPrefAll:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 148
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->enableButtons(Z)V

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const v7, 0x7f090106

    .line 89
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 90
    const v3, 0x7f090104

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mPrefAll:Landroid/view/View;

    .line 91
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRadioButton;

    iput-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    .line 94
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 95
    .local v1, pt:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 96
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 97
    .local v2, screenWith:I
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_0

    .line 98
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 100
    :cond_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v3}, Lcom/htc/widget/HtcRadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 101
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    int-to-double v3, v2

    const-wide v5, 0x3fc2d0e560418937L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 102
    iget v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mListItemHeight:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    .line 105
    iget-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    new-instance v4, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$1;

    invoke-direct {v4, p0}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$1;-><init>(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mTitleText:Landroid/widget/TextView;

    .line 113
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSummaryText:Landroid/widget/TextView;

    .line 124
    const v3, 0x7f090105

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    .line 134
    iget-boolean v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSelected:Z

    invoke-direct {p0, v3}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->updateSelectedState(Z)V

    .line 135
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->onSubtypeButtonClicked(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSelected:Z

    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->updateSelectedState(Z)V

    .line 155
    return-void
.end method
