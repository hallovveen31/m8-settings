.class public Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcBrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HtcBrightnessAdapter"
.end annotation


# instance fields
.field private adapterLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->adapterLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->adapterLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f06001a

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    const v2, 0x7f0900dd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    iput-object v2, v4, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutomaticContainer:Lcom/htc/widget/HtcListItem;

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v2, v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutomaticContainer:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    const v2, 0x7f0900de

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v4, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCheckBoxText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v2, v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCheckBoxText:Lcom/htc/widget/HtcListItem2LineText;

    const v4, 0x7f0c0e26

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v2, v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCheckBoxText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    const v2, 0x7f0900df

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, v4, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    #getter for: Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$300(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "screen_brightness_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v2, v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->adapterLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f06001b

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    const v2, 0x7f0902f8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    iput-object v2, v3, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekbarContainer:Lcom/htc/widget/HtcListItem;

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    const v2, 0x7f090229

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcSeekBar;

    iput-object v2, v3, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    #getter for: Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCurrentBrightnessMode:I
    invoke-static {v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$500(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)I

    move-result v2

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v2, v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/AbsSeekBar;->setMax(I)V

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v2, v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    #getter for: Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutoBrightnessMax:I
    invoke-static {v3}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$000(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_2
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v2, v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter$1;-><init>(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    const v2, 0x7f0900e0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightnessLevelText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v2, v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightnessLevelText:Landroid/widget/TextView;

    const v3, 0x7f0c0ad4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v2, v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v3, v3, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-interface {v2, v3}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->setProgressMax(Landroid/widget/SeekBar;)V

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v2, v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    iget-object v3, v3, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference$HtcBrightnessAdapter;->this$0:Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    #getter for: Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mBrightness:I
    invoke-static {v4}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->access$100(Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->encodeBrightness(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
