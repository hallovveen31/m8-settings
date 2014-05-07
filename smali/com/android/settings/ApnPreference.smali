.class public Lcom/android/settings/ApnPreference;
.super Lcom/htc/preference/HtcPreference;
.source "ApnPreference.java"

# interfaces
.implements Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


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

    .prologue
    const/4 v1, 0x0

    .line 60
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/ApnPreference;->DBG:Z

    .line 124
    sput-object v1, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 125
    sput-object v1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Lcom/htc/widget/HtcCompoundButton;

    .line 130
    sput-object v1, Lcom/android/settings/ApnPreference;->mSelected4GKey:Ljava/lang/String;

    .line 131
    sput-object v1, Lcom/android/settings/ApnPreference;->mCurrent4GChecked:Lcom/htc/widget/HtcCompoundButton;

    .line 139
    const-string v0, "PhoneType"

    sput-object v0, Lcom/android/settings/ApnPreference;->PHONE_TYPE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 120
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 65
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mClickable:Z

    .line 75
    new-instance v0, Lcom/android/settings/ApnPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnPreference$1;-><init>(Lcom/android/settings/ApnPreference;)V

    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mRadioBtnKeyListener:Landroid/view/View$OnKeyListener;

    .line 126
    iput-boolean v2, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mAllowChangePreferredApn:Z

    .line 138
    iput v2, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    .line 121
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mClickable:Z

    .line 75
    new-instance v0, Lcom/android/settings/ApnPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnPreference$1;-><init>(Lcom/android/settings/ApnPreference;)V

    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mRadioBtnKeyListener:Landroid/view/View$OnKeyListener;

    .line 126
    iput-boolean v2, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mAllowChangePreferredApn:Z

    .line 138
    iput v2, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    .line 113
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mClickable:Z

    .line 75
    new-instance v0, Lcom/android/settings/ApnPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnPreference$1;-><init>(Lcom/android/settings/ApnPreference;)V

    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mRadioBtnKeyListener:Landroid/view/View$OnKeyListener;

    .line 126
    iput-boolean v2, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mAllowChangePreferredApn:Z

    .line 138
    iput v2, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    .line 104
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 105
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 574
    sget-boolean v0, Lcom/android/settings/ApnPreference;->DBG:Z

    if-eqz v0, :cond_0

    .line 575
    const-string v0, "ApnPreference"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 279
    const v2, 0x7f040005

    invoke-virtual {p0, v2}, Lcom/android/settings/ApnPreference;->setLayoutResource(I)V

    .line 280
    const/4 v0, 0x1

    .line 281
    .local v0, mEditable:Z
    const/4 v1, 0x1

    .line 282
    .local v1, mSelectable:Z
    iput-boolean v3, p0, Lcom/android/settings/ApnPreference;->mIscdma:Z

    .line 284
    iput-boolean v3, p0, Lcom/android/settings/ApnPreference;->mIs4G:Z

    .line 286
    iput-boolean v3, p0, Lcom/android/settings/ApnPreference;->mProtectedFeature:Z

    .line 292
    return-void
.end method


# virtual methods
.method public get4G()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mIs4G:Z

    return v0
.end method

.method public getEditable()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    return v0
.end method

.method public getSelectable()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 169
    .local v7, view:Landroid/view/View;
    const v9, 0x7f090008

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    .line 171
    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v9, :cond_9

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 173
    .local v6, title:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    .line 174
    .local v5, summary:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 175
    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v9, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineText;->setVisibility(I)V

    .line 181
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 182
    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v9, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_0
    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    if-nez v9, :cond_8

    .line 186
    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    const v10, 0x108002f

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineText;->setIndicatorResource(I)V

    .line 191
    :goto_1
    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcListItem2LineText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 197
    .end local v5           #summary:Ljava/lang/CharSequence;
    .end local v6           #title:Ljava/lang/CharSequence;
    :goto_2
    const v9, 0x1010001

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 198
    .local v8, widget:Landroid/view/View;
    if-eqz v8, :cond_4

    instance-of v9, v8, Lcom/htc/widget/HtcRadioButton;

    if-eqz v9, :cond_4

    .line 199
    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    if-eqz v9, :cond_b

    move-object v4, v8

    .line 200
    check-cast v4, Lcom/htc/widget/HtcRadioButton;

    .line 201
    .local v4, rb:Lcom/htc/widget/HtcRadioButton;
    invoke-virtual {v4, p0}, Lcom/htc/widget/HtcRadioButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 204
    .local v3, isChecked:Z
    if-eqz v3, :cond_1

    .line 205
    sput-object v4, Lcom/android/settings/ApnPreference;->mCurrentChecked:Lcom/htc/widget/HtcCompoundButton;

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/settings/ApnPreference;->mSelected4GKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 211
    .local v2, is4GChecked:Z
    if-eqz v2, :cond_2

    .line 212
    sput-object v4, Lcom/android/settings/ApnPreference;->mCurrent4GChecked:Lcom/htc/widget/HtcCompoundButton;

    .line 216
    :cond_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 219
    if-nez v3, :cond_3

    if-eqz v2, :cond_a

    .line 220
    :cond_3
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 226
    :goto_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 244
    .end local v2           #is4GChecked:Z
    .end local v3           #isChecked:Z
    .end local v4           #rb:Lcom/htc/widget/HtcRadioButton;
    :cond_4
    :goto_4
    const/high16 v9, 0x101

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 248
    .local v1, htcListItem:Landroid/view/View;
    if-eqz v1, :cond_5

    instance-of v9, v1, Lcom/htc/widget/HtcListItem;

    if-eqz v9, :cond_5

    .line 249
    check-cast v1, Lcom/htc/widget/HtcListItem;

    .end local v1           #htcListItem:Landroid/view/View;
    iput-object v1, p0, Lcom/android/settings/ApnPreference;->mTextLayout:Lcom/htc/widget/HtcListItem;

    .line 251
    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mTextLayout:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcListItem;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 253
    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mTextLayout:Lcom/htc/widget/HtcListItem;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 257
    :cond_5
    const v9, 0x1010001

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, apn_radiobutton:Landroid/view/View;
    if-eqz v0, :cond_6

    instance-of v9, v0, Lcom/htc/widget/HtcRadioButton;

    if-eqz v9, :cond_6

    .line 259
    check-cast v0, Lcom/htc/widget/HtcRadioButton;

    .end local v0           #apn_radiobutton:Landroid/view/View;
    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mApnRadioBtn:Lcom/htc/widget/HtcRadioButton;

    .line 268
    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mApnRadioBtn:Lcom/htc/widget/HtcRadioButton;

    iget-object v10, p0, Lcom/android/settings/ApnPreference;->mRadioBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcRadioButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 271
    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mApnRadioBtn:Lcom/htc/widget/HtcRadioButton;

    iget-boolean v10, p0, Lcom/android/settings/ApnPreference;->mAllowChangePreferredApn:Z

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcRadioButton;->setEnabled(Z)V

    .line 275
    :cond_6
    return-object v7

    .line 178
    .end local v8           #widget:Landroid/view/View;
    .restart local v5       #summary:Ljava/lang/CharSequence;
    .restart local v6       #title:Ljava/lang/CharSequence;
    :cond_7
    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineText;->setVisibility(I)V

    goto/16 :goto_0

    .line 188
    :cond_8
    iget-object v9, p0, Lcom/android/settings/ApnPreference;->mHtcListItem:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineText;->setIndicatorResource(I)V

    goto/16 :goto_1

    .line 193
    .end local v5           #summary:Ljava/lang/CharSequence;
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_9
    const-string v9, "ApnPreference"

    const-string v10, "getView(): mHtcListItem is null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 222
    .restart local v2       #is4GChecked:Z
    .restart local v3       #isChecked:Z
    .restart local v4       #rb:Lcom/htc/widget/HtcRadioButton;
    .restart local v8       #widget:Landroid/view/View;
    :cond_a
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    goto :goto_3

    .line 228
    .end local v2           #is4GChecked:Z
    .end local v3           #isChecked:Z
    .end local v4           #rb:Lcom/htc/widget/HtcRadioButton;
    :cond_b
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Lcom/htc/widget/HtcCompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 317
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

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

    .line 318
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mIs4G:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/ApnSettings;->isEnableDualPreferAPN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    if-eqz p2, :cond_2

    .line 326
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrent4GChecked:Lcom/htc/widget/HtcCompoundButton;

    if-eqz v0, :cond_1

    .line 327
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrent4GChecked:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    .line 329
    :cond_1
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrent4GChecked:Lcom/htc/widget/HtcCompoundButton;

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelected4GKey:Ljava/lang/String;

    .line 331
    sget-object v0, Lcom/android/settings/ApnPreference;->mSelected4GKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_2
    sput-object v3, Lcom/android/settings/ApnPreference;->mCurrent4GChecked:Lcom/htc/widget/HtcCompoundButton;

    .line 334
    sput-object v3, Lcom/android/settings/ApnPreference;->mSelected4GKey:Ljava/lang/String;

    goto :goto_0

    .line 337
    :cond_3
    if-eqz p2, :cond_5

    .line 338
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Lcom/htc/widget/HtcCompoundButton;

    if-eqz v0, :cond_4

    .line 339
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Lcom/htc/widget/HtcCompoundButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    .line 341
    :cond_4
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Lcom/htc/widget/HtcCompoundButton;

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 343
    sget-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
    :cond_5
    sput-object v3, Lcom/android/settings/ApnPreference;->mCurrentChecked:Lcom/htc/widget/HtcCompoundButton;

    .line 346
    sput-object v3, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 444
    const-string v9, "[onClick]"

    invoke-static {v9}, Lcom/android/settings/ApnPreference;->Log(Ljava/lang/String;)V

    .line 445
    sget-boolean v9, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mClickable:Z

    if-nez v9, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 450
    .local v3, context:Landroid/content/Context;
    if-eqz v3, :cond_0

    .line 453
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupport3LM()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 454
    const/4 v1, 0x0

    .line 456
    .local v1, apnLocked:Ljava/lang/String;
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

    .line 460
    :goto_1
    if-eqz v1, :cond_2

    .line 461
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v1, v12}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 462
    .local v2, apnState:I
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

    .line 463
    if-eq v2, v11, :cond_0

    .line 469
    .end local v1           #apnLocked:Ljava/lang/String;
    .end local v2           #apnState:I
    :cond_2
    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mIscdma:Z

    if-eqz v9, :cond_5

    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 471
    .local v7, uri:Landroid/net/Uri;
    :goto_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 472
    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mIscdma:Z

    if-eqz v9, :cond_6

    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 481
    :cond_3
    :goto_3
    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mProtectedFeature:Z

    if-eqz v9, :cond_a

    .line 482
    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    if-eqz v9, :cond_9

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 484
    .local v6, pos:I
    int-to-long v9, v6

    invoke-static {v7, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 486
    .local v8, url:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 487
    .local v5, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 488
    sget-object v9, Lcom/android/settings/ApnPreference;->PHONE_TYPE_KEY:Ljava/lang/String;

    iget v10, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    const-string v9, "editable"

    invoke-virtual {v5, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 493
    :cond_4
    :try_start_1
    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 494
    :catch_0
    move-exception v4

    .line 495
    .local v4, e:Landroid/content/ActivityNotFoundException;
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

    .line 457
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #pos:I
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #url:Landroid/net/Uri;
    .restart local v1       #apnLocked:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 458
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 469
    .end local v1           #apnLocked:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    :cond_5
    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 472
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_6
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_3

    .line 473
    :cond_7
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 474
    iget v9, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    if-ne v9, v11, :cond_8

    .line 475
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_3

    .line 476
    :cond_8
    iget v9, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    .line 477
    const-string v9, "content://subgsmapn/carriers"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_3

    .line 501
    :cond_9
    const v9, 0x7f0c04d4

    invoke-static {v3, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 504
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 505
    .restart local v6       #pos:I
    int-to-long v9, v6

    invoke-static {v7, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 506
    .restart local v8       #url:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 507
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v9, "editable"

    iget-boolean v10, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 509
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 510
    sget-object v9, Lcom/android/settings/ApnPreference;->PHONE_TYPE_KEY:Ljava/lang/String;

    iget v10, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 516
    :cond_b
    :try_start_2
    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 517
    :catch_2
    move-exception v4

    .line 518
    .local v4, e:Landroid/content/ActivityNotFoundException;
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
    .parameter "v"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 357
    const-string v9, "[onClick(View v)]"

    invoke-static {v9}, Lcom/android/settings/ApnPreference;->Log(Ljava/lang/String;)V

    .line 358
    sget-boolean v9, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mClickable:Z

    if-nez v9, :cond_1

    .line 440
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 362
    .restart local p1
    :cond_1
    if-eqz p1, :cond_0

    const/high16 v9, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 363
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    invoke-virtual {p1, v11}, Lcom/htc/widget/HtcListItem;->dispatchSetSelected(Z)V

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 365
    .local v3, context:Landroid/content/Context;
    if-eqz v3, :cond_0

    .line 368
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupport3LM()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 369
    const/4 v1, 0x0

    .line 371
    .local v1, apnLocked:Ljava/lang/String;
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

    .line 375
    :goto_1
    if-eqz v1, :cond_2

    .line 376
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v1, v12}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 377
    .local v2, apnState:I
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

    .line 378
    if-eq v2, v11, :cond_0

    .line 385
    .end local v1           #apnLocked:Ljava/lang/String;
    .end local v2           #apnState:I
    :cond_2
    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mIscdma:Z

    if-eqz v9, :cond_5

    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 386
    .local v7, uri:Landroid/net/Uri;
    :goto_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 387
    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mIscdma:Z

    if-eqz v9, :cond_6

    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 396
    :cond_3
    :goto_3
    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mProtectedFeature:Z

    if-eqz v9, :cond_a

    .line 397
    iget-boolean v9, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    if-eqz v9, :cond_9

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 399
    .local v6, pos:I
    int-to-long v9, v6

    invoke-static {v7, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 401
    .local v8, url:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 402
    .local v5, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 403
    sget-object v9, Lcom/android/settings/ApnPreference;->PHONE_TYPE_KEY:Ljava/lang/String;

    iget v10, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    const-string v9, "editable"

    invoke-virtual {v5, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 409
    :cond_4
    :try_start_1
    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 410
    :catch_0
    move-exception v4

    .line 411
    .local v4, e:Landroid/content/ActivityNotFoundException;
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

    .line 372
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #pos:I
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #url:Landroid/net/Uri;
    .restart local v1       #apnLocked:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 373
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 385
    .end local v1           #apnLocked:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    :cond_5
    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 387
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_6
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_3

    .line 388
    :cond_7
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 389
    iget v9, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    if-ne v9, v11, :cond_8

    .line 390
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_3

    .line 391
    :cond_8
    iget v9, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    .line 392
    const-string v9, "content://subgsmapn/carriers"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_3

    .line 417
    :cond_9
    const v9, 0x7f0c04d4

    invoke-static {v3, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 420
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 421
    .restart local v6       #pos:I
    int-to-long v9, v6

    invoke-static {v7, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 422
    .restart local v8       #url:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 423
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v9, "editable"

    iget-boolean v10, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 426
    sget-object v9, Lcom/android/settings/ApnPreference;->PHONE_TYPE_KEY:Ljava/lang/String;

    iget v10, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    :cond_b
    :try_start_2
    invoke-virtual {v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 433
    :catch_2
    move-exception v4

    .line 434
    .local v4, e:Landroid/content/ActivityNotFoundException;
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
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 353
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/htc/widget/HtcListItem;->dispatchSetSelected(Z)V

    .line 354
    return-void
.end method

.method public set4G(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 558
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mIs4G:Z

    .line 559
    return-void
.end method

.method public set4GChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 308
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelected4GKey:Ljava/lang/String;

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelected4GKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAllowChangePreferredApn(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 548
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mAllowChangePreferredApn:Z

    .line 549
    return-void
.end method

.method public setCdma()V
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mIscdma:Z

    .line 554
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 299
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public setClickable(Z)V
    .locals 0
    .parameter "clickable"

    .prologue
    .line 531
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mClickable:Z

    .line 532
    return-void
.end method

.method public setCurrentPhoneType(I)V
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 582
    iput p1, p0, Lcom/android/settings/ApnPreference;->mCurrentPhoneType:I

    .line 583
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

    .line 584
    return-void
.end method

.method public setEditable(Z)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 527
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    .line 528
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 539
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 540
    return-void
.end method

.method setTextViewsFocusable(Z)V
    .locals 1
    .parameter "layoutFocus"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/settings/ApnPreference;->mTextLayout:Lcom/htc/widget/HtcListItem;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/settings/ApnPreference;->mTextLayout:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItem;->setFocusable(Z)V

    .line 570
    :cond_0
    return-void
.end method
