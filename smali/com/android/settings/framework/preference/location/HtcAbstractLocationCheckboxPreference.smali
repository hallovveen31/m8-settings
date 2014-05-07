.class public abstract Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcAbstractLocationCheckboxPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;


# static fields
.field private static final MESSAGE_ON_GET_VALUE:I = 0x1

.field private static final MESSAGE_ON_SET_VALUE:I = 0x2

.field private static final MESSAGE_ON_UPDATE_ENABLED:I = 0x4

.field private static final MESSAGE_ON_UPDATE_STATE:I = 0x3

.field private static final MESSAGE_ON_UPDATE_SUMMARY:I = 0x5

.field private static final MESSAGE_ON_UPDATE_SUMMARY_OFF:I = 0x7

.field private static final MESSAGE_ON_UPDATE_SUMMARY_ON:I = 0x6

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNonUiHandler:Landroid/os/Handler;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->initialize(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->initialize(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->initialize(Landroid/content/Context;)V

    .line 131
    return-void
.end method


# virtual methods
.method protected final dispatchGetValueMessage()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mNonUiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the non-UI handler to update the state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final dispatchSetEnabledMessage(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 349
    :goto_0
    return-void

    .line 346
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the UI handler to handle the click event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final dispatchSetValueMessage()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mNonUiHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the non-UI handler to handle the click event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/String;
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setKey(Ljava/lang/String;)V

    .line 154
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    .line 155
    .restart local v0       #text:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->getCustomSummary()Ljava/lang/String;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->getCustomSummaryOn()Ljava/lang/String;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_3

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 172
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->getCustomSummaryOff()Ljava/lang/String;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_4

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 178
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setPersistent(Z)V

    .line 179
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 276
    .local v0, newValue:Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    :goto_1
    return-void

    .line 275
    .end local v0           #newValue:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    .restart local v0       #newValue:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setChecked(Z)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->dispatchSetValueMessage()V

    goto :goto_1
.end method

.method public final onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 294
    iput-object p2, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mUiHandler:Landroid/os/Handler;

    .line 295
    iput-object p3, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mNonUiHandler:Landroid/os/Handler;

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->updateState()V

    .line 298
    return-void
.end method

.method protected abstract onGetValue()Z
.end method

.method public final onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 368
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    .line 369
    const/4 v1, 0x0

    .line 393
    :goto_0
    return v1

    .line 371
    :cond_0
    const/4 v0, 0x0

    .line 373
    .local v0, value:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 387
    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    new-instance v3, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 393
    const/4 v1, 0x1

    goto :goto_0

    .line 375
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->onGetValue()Z

    move-result v0

    .line 376
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->onHandledGetValueMessage(Z)V

    goto :goto_1

    .line 380
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->isChecked()Z

    move-result v0

    .line 381
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->onSetValue(Z)V

    .line 382
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->onHandledSetValueMessage(Z)V

    goto :goto_1

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onHandleUiMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 412
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/settings/framework/os/HtcMessageParcel;

    if-nez v6, :cond_1

    :cond_0
    move v6, v7

    .line 461
    :goto_0
    return v6

    .line 417
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/os/HtcMessageParcel;

    .line 420
    .local v1, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    iget-object v6, v1, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-eq v6, p0, :cond_2

    move v6, v7

    .line 421
    goto :goto_0

    .line 424
    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 461
    :cond_3
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 430
    :pswitch_0
    iget-object v6, v1, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 431
    .local v2, state:Z
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setChecked(Z)V

    goto :goto_1

    .line 434
    .end local v2           #state:Z
    :pswitch_1
    iget-object v6, v1, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 435
    .local v0, enabled:Z
    if-nez v0, :cond_4

    .line 436
    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setChecked(Z)V

    .line 437
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 441
    .end local v0           #enabled:Z
    :pswitch_2
    iget-object v5, v1, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 442
    .local v5, summaryString:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 443
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 444
    invoke-virtual {p0, v8}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 445
    invoke-virtual {p0, v8}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 450
    .end local v5           #summaryString:Ljava/lang/String;
    :pswitch_3
    iget-object v4, v1, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 451
    .local v4, summaryOnString:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 452
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 456
    .end local v4           #summaryOnString:Ljava/lang/String;
    :pswitch_4
    iget-object v3, v1, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 457
    .local v3, summaryOffString:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 458
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 424
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onHandledGetValueMessage(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 401
    return-void
.end method

.method protected onHandledSetValueMessage(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 408
    return-void
.end method

.method public final onResumeInBackground(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->updateState()V

    .line 286
    return-void
.end method

.method protected abstract onSetValue(Z)V
.end method

.method public final updateState()V
    .locals 0

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->dispatchGetValueMessage()V

    .line 267
    return-void
.end method

.method protected updateSummary(Ljava/lang/String;)V
    .locals 3
    .parameter "summary"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the UI handler to handle the click event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updateSummaryOff(Ljava/lang/String;)V
    .locals 3
    .parameter "summary"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the UI handler to handle the click event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updateSummaryOn(Ljava/lang/String;)V
    .locals 3
    .parameter "summary"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the UI handler to handle the click event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
