.class public abstract Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcAbstractStatusPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;


# static fields
.field private static final MESSAGE_ON_GET_SUMMARY:I = 0x1

.field private static final MESSAGE_ON_SET_SUMMARY:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNonUiHandler:Landroid/os/Handler;

.field private mSummary:Ljava/lang/String;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mSummary:Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->initialize(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mSummary:Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->initialize(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mSummary:Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->initialize(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method private final initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->setKey(Ljava/lang/String;)V

    .line 115
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->getCustomIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 116
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1       #text:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    :cond_2
    const-string v2, " "

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->setSelectable(Z)V

    .line 132
    return-void
.end method


# virtual methods
.method protected canGetSummaryImmediately()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/String;
.end method

.method protected abstract isConstantSummary()Z
.end method

.method public final onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 278
    iput-object p2, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mUiHandler:Landroid/os/Handler;

    .line 279
    iput-object p3, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mNonUiHandler:Landroid/os/Handler;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->updateSummary()V

    .line 285
    return-void
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const-string v0, " "

    return-object v0
.end method

.method protected onGetSummaryLater()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public final onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 291
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v1, p0, :cond_1

    .line 292
    const/4 v0, 0x0

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->canGetSummaryImmediately()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->isConstantSummary()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mSummary:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 298
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->onGetSummary()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mSummary:Ljava/lang/String;

    .line 301
    :cond_3
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mSummary:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 308
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->isConstantSummary()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mSummary:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 309
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->onGetSummaryLater()V

    goto :goto_0
.end method

.method public final onHandleUiMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    if-nez v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v1

    .line 324
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/os/HtcMessageParcel;

    .line 327
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    iget-object v2, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 331
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->onSetSummary(Ljava/lang/String;)V

    .line 332
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 343
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 348
    return-void
.end method

.method protected onSetSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    return-void
.end method

.method protected final updateSummary()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mNonUiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the non-UI handler to update the summary."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final updateSummary(Ljava/lang/String;)V
    .locals 3
    .parameter "summary"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the UI handler to update the summary."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
