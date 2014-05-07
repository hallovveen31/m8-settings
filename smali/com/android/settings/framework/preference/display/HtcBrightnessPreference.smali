.class public Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;
.super Lcom/android/settings/framework/preference/HtcSeekBarDialogPreference;
.source "HtcBrightnessPreference.java"

# interfaces
.implements Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$OnScreenOnOffChangedListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;
    }
.end annotation


# static fields
.field private static final ANCHOR:Ljava/lang/String; = "brightness"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final KEY:Ljava/lang/String; = "BRIGHTNESS"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final AUTO_BRIGHTNESS_MAX:I

.field item_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAutoBrightnessMax:I

.field protected mAutomaticContainer:Lcom/htc/widget/HtcListItem;

.field private mBrightness:I

.field protected mBrightnessLevelText:Landroid/widget/TextView;

.field protected mCheckBox:Lcom/htc/widget/HtcCheckBox;

.field protected mCheckBoxText:Lcom/htc/widget/HtcListItem2LineText;

.field private mContext:Landroid/content/Context;

.field private mCurrentBrightnessMode:I

.field private mList:Lcom/htc/widget/HtcListView;

.field protected mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

.field private mOldBrightnessMode:I

.field private mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

.field protected mSeekBar:Landroid/widget/SeekBar;

.field protected mSeekbarContainer:Lcom/htc/widget/HtcListItem;

.field protected mText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    .line 56
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->AUTO_BRIGHTNESS_MAX:I

    .line 203
    new-instance v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;-><init>(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->item_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->initialize(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->AUTO_BRIGHTNESS_MAX:I

    .line 203
    new-instance v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;-><init>(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->item_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->initialize(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCurrentBrightnessMode:I

    return v0
.end method


# virtual methods
.method protected Log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 606
    sget-object v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void
.end method

.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 1
    .parameter "parent"

    .prologue
    .line 573
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 574
    const/4 v0, 0x1

    return v0
.end method

.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;I)Z
    .locals 1
    .parameter "parent"
    .parameter "order"

    .prologue
    .line 585
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setOrder(I)V

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    return v0
.end method

.method protected applyDemoMode()V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setEnabled(Z)V

    .line 139
    :cond_0
    return-void
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const v1, 0x7f0c0e16

    .line 116
    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "[initialize]"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 121
    const-string v0, "BRIGHTNESS"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setKey(Ljava/lang/String;)V

    .line 123
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setTitle(I)V

    .line 124
    const v0, 0x7f0c0e17

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setSummary(I)V

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setDialogTitle(I)V

    .line 127
    iput-object p1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->applyDemoMode()V

    .line 129
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 160
    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "[onBindDialogView]"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 163
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcSeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 165
    invoke-static {}, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSwitcher;->getInstance()Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldBrightnessMode:I

    .line 172
    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldBrightnessMode:I

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCurrentBrightnessMode:I

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_auto_brightness_max"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    .line 187
    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Settings][display][automatic_mode][get][value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldBrightnessMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Settings][display][brightness][get][value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Settings][display][auto_brightness_max][get][value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 197
    :cond_1
    new-instance v0, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    .line 199
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;->setOnScreenOnOffListener(Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$OnScreenOnOffChangedListener;)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;->register()V

    .line 201
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 143
    sget-boolean v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 144
    const-string v2, "[onCreateDialogView]"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 148
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040024

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 149
    .local v1, view:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mList:Lcom/htc/widget/HtcListView;

    .line 150
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mList:Lcom/htc/widget/HtcListView;

    new-instance v3, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;-><init>(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->item_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mList:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    .line 155
    return-object v1
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 452
    sget-boolean v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 453
    const-string v1, "[onDialogClosed]"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 456
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcSeekBarDialogPreference;->onDialogClosed(Z)V

    .line 458
    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-virtual {v1}, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;->unregister()V

    .line 460
    if-eqz p1, :cond_2

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 464
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 465
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.settings.action.BRIGHTNESS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_auto_brightness_max"

    iget v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 485
    if-eqz p1, :cond_3

    .line 486
    const-string v1, "[Settings][Display][close_dialog][press_ok]"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 491
    :cond_1
    :goto_1
    return-void

    .line 473
    :cond_2
    iget v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldBrightnessMode:I

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setAutomaticMode(I)V

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    .line 477
    iget v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setUnderlyingBrightness(I)V

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_auto_brightness_max"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    .line 481
    iget v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setUnderlyingAutoBrightness(I)V

    goto :goto_0

    .line 488
    :cond_3
    const-string v1, "[Settings][Display][close_dialog][press_cancel]"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDisplay(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 407
    sget-boolean v3, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 408
    const-string v3, "[onDisplay]"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 410
    :cond_0
    sget-boolean v3, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 411
    sget-object v3, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Landroid/content/Intent;)V

    .line 415
    :cond_1
    const-string v0, ":android:show_preference"

    .line 416
    .local v0, EXTRA_SHOW_PREFERENCE:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 417
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 418
    const-string v3, ":android:show_preference"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, preference:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "brightness"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 422
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/settings/framework/preference/HtcAbsPreference;->performClick(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 426
    const-string v3, ":android:show_preference"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 430
    .end local v2           #preference:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 434
    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 435
    const-string v0, "[onPause]"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 437
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 369
    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 370
    const-string v0, "[onResume]"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 374
    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldBrightnessMode:I

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setAutomaticMode(I)V

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    .line 381
    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setUnderlyingBrightness(I)V

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_auto_brightness_max"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    .line 388
    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setUnderlyingAutoBrightness(I)V

    .line 390
    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Settings][display][automatic_mode][get][value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldBrightnessMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Settings][display][brightness][get][value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Settings][display][auto_brightness_max][get][value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 403
    :cond_2
    return-void
.end method

.method public onScreenOnOffChanged(Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$EventParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 594
    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Settings][display][brightness]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p1, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$EventParams;->powerOn:Z

    if-eqz v0, :cond_1

    const-string v0, "power_on"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 598
    :cond_0
    return-void

    .line 595
    :cond_1
    const-string v0, "power_off"

    goto :goto_0
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 441
    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 442
    const-string v0, "[onStop]"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 448
    :cond_1
    return-void
.end method

.method protected setAutomaticMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 553
    sget-boolean v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 554
    if-nez p1, :cond_1

    const-string v0, "SCREEN_BRIGHTNESS_MODE_MANUAL"

    .line 557
    .local v0, modeStatus:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Settings][display][automatic_mode][set][value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 562
    .end local v0           #modeStatus:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 564
    iput p1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCurrentBrightnessMode:I

    .line 565
    return-void

    .line 554
    :cond_1
    const-string v0, "SCREEN_BRIGHTNESS_MODE_AUTOMATIC"

    goto :goto_0
.end method

.method protected setUnderlyingAutoBrightness(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 524
    sget-boolean v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Settings][Display][auto_brightness][set][value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 530
    :cond_0
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 533
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_1

    .line 534
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessPercentageSettingOverride(I)V

    .line 542
    .end local v1           #power:Landroid/os/IPowerManager;
    :goto_0
    return-void

    .line 536
    .restart local v1       #power:Landroid/os/IPowerManager;
    :cond_1
    sget-object v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    const-string v3, "Set auto brightness failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    .end local v1           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 539
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    const-string v3, "Set auto brightness failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected setUnderlyingBrightness(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 499
    sget-boolean v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Settings][Display][brightness][set][value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    .line 505
    :cond_0
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 508
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_1

    .line 509
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 517
    .end local v1           #power:Landroid/os/IPowerManager;
    :goto_0
    return-void

    .line 511
    .restart local v1       #power:Landroid/os/IPowerManager;
    :cond_1
    sget-object v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    const-string v3, "Set the backlight brightness failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    .end local v1           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 514
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    const-string v3, "Set the backlight brightness failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
