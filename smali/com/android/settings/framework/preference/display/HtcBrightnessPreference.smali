.class public Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;
.super Lcom/android/settings/framework/preference/HtcSeekBarDialogPreference;
.source "HtcBrightnessPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;
.implements Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$OnScreenOnOffChangedListener;


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

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->AUTO_BRIGHTNESS_MAX:I

    new-instance v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;-><init>(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->item_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->AUTO_BRIGHTNESS_MAX:I

    new-instance v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$1;-><init>(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->item_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)Lcom/htc/widget/HtcListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCurrentBrightnessMode:I

    return v0
.end method


# virtual methods
.method protected Log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;I)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    return v0
.end method

.method protected applyDemoMode()V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 2

    const v1, 0x7f0c0e16

    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "[initialize]"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "BRIGHTNESS"

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    const v0, 0x7f0c0e17

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(I)V

    iput-object p1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->applyDemoMode()V

    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "[onBindDialogView]"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSwitcher;->getInstance()Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldBrightnessMode:I

    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldBrightnessMode:I

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCurrentBrightnessMode:I

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_auto_brightness_max"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v0, :cond_1

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

    :cond_1
    new-instance v0, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;->setOnScreenOnOffListener(Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$OnScreenOnOffChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->register()V

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "[onCreateDialogView]"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040024

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mList:Lcom/htc/widget/HtcListView;

    new-instance v3, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;-><init>(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->item_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mList:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    return-object v1
.end method

.method protected onDialogClosed(Z)V
    .locals 4

    sget-boolean v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "[onDialogClosed]"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onDialogClosed(Z)V

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-virtual {v1}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->unregister()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.htc.settings.action.BRIGHTNESS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_auto_brightness_max"

    iget v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_3

    const-string v1, "[Settings][Display][close_dialog][press_ok]"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldBrightnessMode:I

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setAutomaticMode(I)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    iget v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setUnderlyingBrightness(I)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_auto_brightness_max"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    iget v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setUnderlyingAutoBrightness(I)V

    goto :goto_0

    :cond_3
    const-string v1, "[Settings][Display][close_dialog][press_cancel]"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDisplay(Landroid/app/Activity;)V
    .locals 5

    sget-boolean v3, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "[onDisplay]"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    :cond_0
    sget-boolean v3, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Landroid/content/Intent;)V

    :cond_1
    const-string v0, ":android:show_preference"

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, ":android:show_preference"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "brightness"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/settings/framework/preference/HtcAbsPreference;->performClick(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceScreen;)V

    const-string v3, ":android:show_preference"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "[onPause]"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "[onResume]"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldBrightnessMode:I

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setAutomaticMode(I)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setUnderlyingBrightness(I)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_auto_brightness_max"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setUnderlyingAutoBrightness(I)V

    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v0, :cond_1

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

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method public onScreenOnOffChanged(Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$EventParams;)V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v0, :cond_0

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

    :cond_0
    return-void

    :cond_1
    const-string v0, "power_off"

    goto :goto_0
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "[onStop]"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->Log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_1
    return-void
.end method

.method protected setAutomaticMode(I)V
    .locals 3

    sget-boolean v1, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    const-string v0, "SCREEN_BRIGHTNESS_MODE_MANUAL"

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

    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput p1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCurrentBrightnessMode:I

    return-void

    :cond_1
    const-string v0, "SCREEN_BRIGHTNESS_MODE_AUTOMATIC"

    goto :goto_0
.end method

.method protected setUnderlyingAutoBrightness(I)V
    .locals 4

    sget-boolean v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v2, :cond_0

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

    :cond_0
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessPercentageSettingOverride(I)V

    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    const-string v3, "Set auto brightness failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    const-string v3, "Set auto brightness failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected setUnderlyingBrightness(I)V
    .locals 4

    sget-boolean v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->DEBUG:Z

    if-eqz v2, :cond_0

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

    :cond_0
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    const-string v3, "Set the backlight brightness failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    const-string v3, "Set the backlight brightness failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
