.class public Lcom/android/settings/ApnPreference;
.super Lcom/htc/preference/HtcPreference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;


# static fields
.field private static DBG:Z = false

.field public static PHONE_TYPE_KEY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ApnPreference"

.field private static mCurrent4GChecked:Lcom/htc/widget/HtcCompoundButton;

.field private static mCurrentChecked:Lcom/htc/widget/HtcCompoundButton;

.field private static mSelected4GKey:Ljava/lang/String;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mAllowChangePreferredApn:Z

.field private mApnRadioBtn:Lcom/htc/widget/HtcRadioButton;

.field private mClickable:Z

.field private mCurrentPhoneType:I

.field private mEditable:Z

.field private mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

.field private mIs4G:Z

.field private mIscdma:Z

.field private mProtectFromCheckedChange:Z

.field private mProtectedFeature:Z

.field private mRadioBtnKeyListener:Landroid/view/View$OnKeyListener;

.field private mSelectable:Z

.field private mTextLayout:Lcom/htc/widget/HtcListItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/ApnPreference;->DBG:Z

    sput-object v1, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    sput-object v1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Lcom/htc/widget/HtcCompoundButton;

    sput-object v1, Lcom/android/settings/ApnPreference;->mSelected4GKey:Ljava/lang/String;

    sput-object v1, Lcom/android/settings/ApnPreference;->mCurrent4GChecked:Lcom/htc/widget/HtcCompoundButton;

    const-string v0, "PhoneType"

    sput-object v0, Lcom/android/settings/ApnPreference;->PHONE_TYPE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mClickable:Z

    new-instance v0, Lcom/android/settings/ApnPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnPreference$1;-><init>(Lcom/android/settings/ApnPreference;)V

    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mRadioBtnKeyListener:Landroid/view/View$OnKeyListener;

    iput-boolean v2, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mAllowChangePreferredApn:Z

    iput v2, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mClickable:Z

    new-instance v0, Lcom/android/settings/ApnPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnPreference$1;-><init>(Lcom/android/settings/ApnPreference;)V

    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mRadioBtnKeyListener:Landroid/view/View$OnKeyListener;

    iput-boolean v2, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mAllowChangePreferredApn:Z

    iput v2, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mClickable:Z

    new-instance v0, Lcom/android/settings/ApnPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnPreference$1;-><init>(Lcom/android/settings/ApnPreference;)V

    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mRadioBtnKeyListener:Landroid/view/View$OnKeyListener;

    iput-boolean v2, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mAllowChangePreferredApn:Z

    iput v2, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/settings/ApnPreference;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ApnPreference"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private init()V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x7f040005

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    iput-boolean v3, p0, Lcom/android/settings/ApnPreference;->mIscdma:Z

    iput-boolean v3, p0, Lcom/android/settings/ApnPreference;->mIs4G:Z

    iput-boolean v3, p0, Lcom/android/settings/ApnPreference;->mProtectedFeature:Z

    return-void
.end method


# virtual methods
.method public get4G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mIs4G:Z

    return v0
.end method

.method public getEditable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    return v0
.end method

.method public getSelectable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f090008

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v9, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v9, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    const v10, 0x108002f

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineText;->setIndicatorResource(I)V

    :goto_1
    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :goto_2
    const v9, 0x1010001

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_4

    instance-of v9, v8, Lcom/htc/widget/HtcRadioButton;

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    if-eqz v9, :cond_b

    move-object v4, v8

    check-cast v4, Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v4, p0}, Lcom/htc/widget/HtcCompoundButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sput-object v4, Lcom/android/settings/ApnPreference;->mCurrentChecked:Lcom/htc/widget/HtcCompoundButton;

    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/settings/ApnPreference;->mSelected4GKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-object v4, Lcom/android/settings/ApnPreference;->mCurrent4GChecked:Lcom/htc/widget/HtcCompoundButton;

    :cond_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-nez v3, :cond_3

    if-eqz v2, :cond_a

    :cond_3
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    :goto_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    :cond_4
    :goto_4
    const/high16 v9, 0x101

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    instance-of v9, v1, Lcom/htc/widget/HtcListItem;

    if-eqz v9, :cond_5

    check-cast v1, Lcom/htc/widget/HtcListItem;

    iput-object v1, p0, Lcom/android/settings/ApnPreference;->mTextLayout:Lcom/htc/widget/HtcListItem;

    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mTextLayout:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mTextLayout:Lcom/htc/widget/HtcListItem;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    :cond_5
    const v9, 0x1010001

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v9, v0, Lcom/htc/widget/HtcRadioButton;

    if-eqz v9, :cond_6

    check-cast v0, Lcom/htc/widget/HtcRadioButton;

    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mApnRadioBtn:Lcom/htc/widget/HtcRadioButton;

    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mApnRadioBtn:Lcom/htc/widget/HtcRadioButton;

    iget-object v10, p0, Lcom/android/settings/ApnPreference;->mRadioBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mApnRadioBtn:Lcom/htc/widget/HtcRadioButton;

    iget-boolean v10, p0, Lcom/android/settings/ApnPreference;->mAllowChangePreferredApn:Z

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcCompoundButton;->setEnabled(Z)V

    :cond_6
    return-object v7

    :cond_7
    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineText;->setIndicatorResource(I)V

    goto/16 :goto_1

    :cond_9
    const-string v9, "ApnPreference"

    const-string v10, "getView(): mHtcListItem is null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    goto :goto_3

    :cond_b
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public isChecked()Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Lcom/htc/widget/HtcCompoundButton;Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mIs4G:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/ApnSettings;->isEnableDualPreferAPN()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrent4GChecked:Lcom/htc/widget/HtcCompoundButton;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrent4GChecked:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    :cond_1
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrent4GChecked:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelected4GKey:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/ApnPreference;->mSelected4GKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sput-object v3, Lcom/android/settings/ApnPreference;->mCurrent4GChecked:Lcom/htc/widget/HtcCompoundButton;

    sput-object v3, Lcom/android/settings/ApnPreference;->mSelected4GKey:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Lcom/htc/widget/HtcCompoundButton;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    :cond_4
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    sput-object v3, Lcom/android/settings/ApnPreference;->mCurrentChecked:Lcom/htc/widget/HtcCompoundButton;

    sput-object v3, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v9, "[onClick]"

    invoke-static {v9}, Lcom/android/settings/ApnPreference;->Log(Ljava/lang/String;)V

    sget-boolean v9, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mClickable:Z

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupport3LM()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v1, 0x0

    :try_start_0
    const-class v9, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;

    const-string v10, "APN_LOCKED"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v1, v12}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "3LM APN_LOCKED: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/ApnPreference;->Log(Ljava/lang/String;)V

    if-eq v2, v11, :cond_0

    :cond_2
    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mIscdma:Z

    if-eqz v9, :cond_5

    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    :goto_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mIscdma:Z

    if-eqz v9, :cond_6

    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    :cond_3
    :goto_3
    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mProtectedFeature:Z

    if-eqz v9, :cond_a

    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v9, v6

    invoke-static {v7, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/settings/ApnPreference;->PHONE_TYPE_KEY:Ljava/lang/String;

    iget v10, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "editable"

    invoke-virtual {v5, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    :try_start_1
    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v9, "ApnPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Activity Not Found Exception. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    :cond_6
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    if-ne v9, v11, :cond_8

    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_3

    :cond_8
    iget v9, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    const-string v9, "content://subgsmapn/carriers"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_3

    :cond_9
    const v9, 0x7f0c04d4

    invoke-static {v3, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v9, v6

    invoke-static {v7, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v9, "editable"

    iget-boolean v10, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v9

    if-eqz v9, :cond_b

    sget-object v9, Lcom/android/settings/ApnPreference;->PHONE_TYPE_KEY:Ljava/lang/String;

    iget v10, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_b
    :try_start_2
    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v4

    const-string v9, "ApnPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Activity Not Found Exception. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v9, "[onClick(View v)]"

    invoke-static {v9}, Lcom/android/settings/ApnPreference;->Log(Ljava/lang/String;)V

    sget-boolean v9, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mClickable:Z

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/high16 v9, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v9, v10, :cond_0

    check-cast p1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->dispatchSetSelected(Z)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupport3LM()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v1, 0x0

    :try_start_0
    const-class v9, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;

    const-string v10, "APN_LOCKED"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v1, v12}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "3LM APN_LOCKED: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/ApnPreference;->Log(Ljava/lang/String;)V

    if-eq v2, v11, :cond_0

    :cond_2
    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mIscdma:Z

    if-eqz v9, :cond_5

    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    :goto_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mIscdma:Z

    if-eqz v9, :cond_6

    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    :cond_3
    :goto_3
    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mProtectedFeature:Z

    if-eqz v9, :cond_a

    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v9, v6

    invoke-static {v7, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/settings/ApnPreference;->PHONE_TYPE_KEY:Ljava/lang/String;

    iget v10, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "editable"

    invoke-virtual {v5, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    :try_start_1
    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v9, "ApnPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Activity Not Found Exception. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    :cond_6
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    if-ne v9, v11, :cond_8

    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_3

    :cond_8
    iget v9, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    const-string v9, "content://subgsmapn/carriers"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_3

    :cond_9
    const v9, 0x7f0c04d4

    invoke-static {v3, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v9, v6

    invoke-static {v7, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v9, "editable"

    iget-boolean v10, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v9

    if-eqz v9, :cond_b

    sget-object v9, Lcom/android/settings/ApnPreference;->PHONE_TYPE_KEY:Ljava/lang/String;

    iget v10, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_b
    :try_start_2
    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v4

    const-string v9, "ApnPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Activity Not Found Exception. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    check-cast p1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->dispatchSetSelected(Z)V

    return-void
.end method

.method public set4G(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mIs4G:Z

    return-void
.end method

.method public set4GChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelected4GKey:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelected4GKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAllowChangePreferredApn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mAllowChangePreferredApn:Z

    return-void
.end method

.method public setCdma()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mIscdma:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mClickable:Z

    return-void
.end method

.method public setCurrentPhoneType(I)V
    .locals 3

    iput p1, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentPhoneType mCurrentPhoneType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setEditable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    return-void
.end method

.method setTextViewsFocusable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnPreference;->mTextLayout:Lcom/htc/widget/HtcListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnPreference;->mTextLayout:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    return-void
.end method
