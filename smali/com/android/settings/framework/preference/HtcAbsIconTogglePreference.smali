.class public abstract Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcAbsIconTogglePreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/preference/HtcIPreferenceListener$ISetupHostRelationship;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;
.implements Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCustView:Landroid/view/View;

.field private mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

.field protected mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

.field private mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->TAG:Ljava/lang/String;

    .line 59
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method private initCustView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 107
    new-instance v0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getCustomHeaderViewType()Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;-><init>(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader$Type;)V

    .line 109
    .local v0, view:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getCustomIconResource()I

    move-result v1

    if-ltz v1, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getIconImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getCustomIconResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    .line 114
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v1, p0}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 116
    return-object v0
.end method

.method private final initializeInBackground()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->initializeInBackground()V

    .line 226
    return-void
.end method

.method private onInitializeInBackground(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getCustomKey()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, text:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 345
    check-cast v0, Ljava/lang/String;

    .end local v0           #text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setKey(Ljava/lang/String;)V

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    .line 351
    .restart local v0       #text:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getCustomSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 360
    :cond_2
    return-void
.end method

.method private onInitializeInForeground(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setPersistent(Z)V

    .line 331
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->initCustView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mCustView:Landroid/view/View;

    .line 332
    return-void
.end method

.method private setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/widget/HtcToggleButton;->setChecked(Z)V

    .line 440
    :cond_0
    return-void
.end method

.method private setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 447
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 448
    return-void
.end method

.method private setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 443
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method

.method private startIntent()V
    .locals 5

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getCustomIntent()Landroid/content/Intent;

    move-result-object v1

    .line 454
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    move-result-object v0

    .line 456
    .local v0, actionType:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    if-nez v0, :cond_0

    .line 457
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    .line 462
    :cond_0
    sget-object v2, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    if-ne v0, v2, :cond_1

    .line 463
    const-string v2, ":android:show_fragment_title"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getCustomTitleRes()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 468
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getHost()Lcom/android/settings/framework/app/HtcIInternalHost;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/settings/framework/content/HtcSettingsContext;->startIntent(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;)V

    .line 474
    .end local v0           #actionType:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    :goto_0
    return-void

    .line 471
    :cond_2
    sget-object v2, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The intent of the preference ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final syncStateFromDataSourceInBackground()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueFromDataSourceInBackground()V

    .line 309
    return-void
.end method

.method private final syncStateToDataSourceInBackground(Z)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueToDataSourceInBackground(Ljava/lang/Object;)V

    .line 319
    return-void
.end method


# virtual methods
.method protected abstract getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
.end method

.method protected getCustomHeaderViewType()Lcom/android/settings/framework/activity/HtcWrapHeader$Type;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    return-object v0
.end method

.method protected getCustomIconResource()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, -0x1

    return v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/String;
.end method

.method protected abstract getCustomTitleRes()I
.end method

.method public getHost()Lcom/android/settings/framework/app/HtcIInternalHost;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    return-object v0
.end method

.method public getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    return-object v0
.end method

.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 1
    .parameter "button"
    .parameter "state"

    .prologue
    .line 390
    invoke-direct {p0, p2}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->syncStateToDataSourceInBackground(Z)V

    .line 392
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getCustomSummaryOn()Ljava/lang/CharSequence;

    move-result-object v0

    .line 393
    .local v0, text:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 394
    if-eqz p2, :cond_2

    .line 395
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setSummaryOnInForeground(Ljava/lang/CharSequence;)V

    .line 400
    :cond_0
    :goto_1
    return-void

    .line 392
    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getCustomSummaryOff()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 397
    .restart local v0       #text:Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setSummaryOffInForeground(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onClick()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getCustomHeaderViewType()Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    move-result-object v2

    .line 408
    .local v2, type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;
    sget-object v3, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference$1;->$SwitchMap$com$android$settings$framework$activity$HtcWrapHeader$Type:[I

    invoke-virtual {v2}, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 410
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v1

    .line 411
    .local v1, toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    if-nez v1, :cond_1

    .line 412
    sget-object v3, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->TAG:Ljava/lang/String;

    const-string v4, "onClick(): [error] toggleButton==null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings/framework/widget/HtcToggleButton;->isChecked()Z

    move-result v0

    .line 416
    .local v0, isChecked:Z
    if-nez v0, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/settings/framework/widget/HtcToggleButton;->setChecked(Z)V

    .line 417
    sget-boolean v3, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 418
    sget-object v3, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v3, v5

    .line 416
    goto :goto_1

    :cond_3
    move v4, v5

    .line 418
    goto :goto_2

    .line 422
    .end local v0           #isChecked:Z
    .end local v1           #toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getCustomIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 424
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->startIntent()V

    goto :goto_0

    .line 428
    :cond_4
    invoke-super {p0}, Lcom/htc/preference/HtcListPreference;->onClick()V

    goto :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "group"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mCustView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->initCustView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mCustView:Landroid/view/View;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mCustView:Landroid/view/View;

    return-object v0
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 483
    instance-of v0, p1, Lcom/android/settings/framework/app/HtcIInternalHost;

    if-eqz v0, :cond_0

    .line 484
    check-cast p1, Lcom/android/settings/framework/app/HtcIInternalHost;

    .end local p1
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setHandlers(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 488
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->initializeInBackground()V

    .line 489
    return-void
.end method

.method protected abstract onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    .line 534
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v3

    .line 537
    .local v3, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v3, :cond_0

    .line 538
    const/4 v5, 0x0

    .line 583
    :goto_0
    return v5

    .line 541
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 583
    :cond_1
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 543
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->onInitializeInBackground(Landroid/content/Context;)V

    goto :goto_1

    .line 547
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 551
    .local v0, checked:Ljava/lang/Boolean;
    if-eqz v0, :cond_4

    .line 552
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setCheckedInForeground(Z)V

    .line 555
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getCustomSummaryOn()Ljava/lang/CharSequence;

    move-result-object v4

    .line 556
    .local v4, text:Ljava/lang/CharSequence;
    :goto_2
    if-eqz v4, :cond_1

    .line 557
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 558
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setSummaryOnInForeground(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 555
    .end local v4           #text:Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getCustomSummaryOff()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_2

    .line 560
    .restart local v4       #text:Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setSummaryOffInForeground(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 564
    .end local v4           #text:Ljava/lang/CharSequence;
    :cond_4
    sget-boolean v5, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 565
    sget-object v5, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->TAG:Ljava/lang/String;

    const-string v6, "Failed to retrieve a remote data source."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    sget-object v5, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->TAG:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/framework/util/log/HtcLog;->logCallStack(Ljava/lang/String;)V

    goto :goto_1

    .line 572
    .end local v0           #checked:Ljava/lang/Boolean;
    :pswitch_2
    iget-object v5, v3, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 573
    .local v2, newState:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->onSetValueInBackground(Landroid/content/Context;Z)Z

    move-result v1

    .line 578
    .local v1, isSuccessful:Z
    if-nez v1, :cond_1

    .line 579
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->syncStateFromDataSourceInBackground()V

    goto :goto_1

    .line 541
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onHandleUiMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 494
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    .line 497
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v0, :cond_0

    .line 498
    const/4 v1, 0x0

    .line 528
    :goto_0
    return v1

    .line 501
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 528
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 503
    :sswitch_0
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 507
    :sswitch_1
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 511
    :sswitch_2
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 515
    :sswitch_3
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 520
    :sswitch_4
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setChecked(Z)V

    goto :goto_1

    .line 525
    :sswitch_5
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->setEnabled(Z)V

    goto :goto_1

    .line 501
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_3
        0x19 -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->syncStateFromDataSourceInBackground()V

    .line 365
    return-void
.end method

.method protected abstract onSetValueInBackground(Landroid/content/Context;Z)Z
.end method

.method public final setCheckedInForeground(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setCheckedInForeground(Z)V

    .line 291
    return-void
.end method

.method public final setEnabledInForeground(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setEnabledInForeground(Z)V

    .line 301
    return-void
.end method

.method public setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    .line 90
    return-void
.end method

.method public final setIconInForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setIconInForeground(Landroid/graphics/drawable/Drawable;)V

    .line 281
    return-void
.end method

.method public final setSummaryInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 248
    return-void
.end method

.method public final setSummaryOffInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summaryOff"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSummaryOffInForeground(Ljava/lang/CharSequence;)V

    .line 270
    return-void
.end method

.method public final setSummaryOnInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summaryOn"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSummaryOnInForeground(Ljava/lang/CharSequence;)V

    .line 259
    return-void
.end method

.method public final setTitleInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 237
    return-void
.end method
