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

    const-class v0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/content/Intent;Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/TextServicesManager;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, v3, v2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iput v2, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mListItemHeight:I

    iput-object p1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mRes:Landroid/content/res/Resources;

    iput-object p4, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    const v1, 0x7f04008f

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    iput-object p3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    iput-boolean v2, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSelected:Z

    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "HtcListItemHeight"

    invoke-static {v1, v2}, Lcom/htc/widget/HtcProperty;->getProperty(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mListItemHeight:I

    return-void

    :cond_0
    iput-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->onLeftButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)Landroid/view/textservice/TextServicesManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->onSettingsButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method private enableButtons(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v0, :cond_2

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

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$3;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$3;-><init>(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private onLeftButtonClicked(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z

    return-void
.end method

.method private onSettingsButtonClicked(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private onSubtypeButtonClicked(Landroid/view/View;)V
    .locals 12

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0c00b0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v6

    add-int/lit8 v8, v6, 0x1

    new-array v4, v8, [Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0c1023

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v11

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_1

    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v10}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v8, v3, 0x1

    aput-object v5, v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8, v11}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_2

    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v1, v3, 0x1

    :cond_2
    new-instance v8, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$2;

    invoke-direct {v8, p0}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$2;-><init>(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)V

    invoke-virtual {v0, v4, v1, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v8, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateSelectedState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mPrefAll:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->enableButtons(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8

    const v7, 0x7f090106

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    const v3, 0x7f090104

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mPrefAll:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRadioButton;

    iput-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_0

    iget v2, v1, Landroid/graphics/Point;->y:I

    :cond_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v3}, Lcom/htc/widget/HtcCompoundButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-double v3, v2

    const-wide v5, 0x3fc2d0e560418937L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mListItemHeight:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    new-instance v4, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$1;

    invoke-direct {v4, p0}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$1;-><init>(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mTitleText:Landroid/widget/TextView;

    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSummaryText:Landroid/widget/TextView;

    const v3, 0x7f090105

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSelected:Z

    invoke-direct {p0, v3}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->updateSelectedState(Z)V

    return-void
.end method

.method protected onClick()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->onSubtypeButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSelected:Z

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->updateSelectedState(Z)V

    return-void
.end method
