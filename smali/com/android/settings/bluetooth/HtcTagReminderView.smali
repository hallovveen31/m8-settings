.class public Lcom/android/settings/bluetooth/HtcTagReminderView;
.super Lcom/htc/reminderview/ui/ReminderView;
.source "HtcTagReminderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/HtcTagReminderView$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcTagReminderView"


# instance fields
.field mCallback:Lcom/android/settings/bluetooth/HtcTagReminderView$Callback;

.field private mContext:Landroid/content/Context;

.field private mDismiss:Lcom/htc/reminderview/drag/BaseTile$Button;

.field private mSetting:Lcom/htc/reminderview/drag/BaseTile$Button;

.field private mTextView1:Landroid/widget/TextView;

.field private mTextView2:Landroid/widget/TextView;

.field private mTextView3:Landroid/widget/TextView;

.field mTile:Lcom/htc/reminderview/ui/ReminderView$ReminderTile;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/reminderview/ui/ReminderView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/HtcTagReminderView;->initView(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/htc/reminderview/ui/ReminderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/HtcTagReminderView;->initView(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/reminderview/ui/ReminderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/HtcTagReminderView;->initView(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 43
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mContext:Landroid/content/Context;

    .line 47
    const v1, 0x7f040059

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/HtcTagReminderView;->setReminderTile(II)Lcom/htc/reminderview/ui/ReminderView$ReminderTile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mTile:Lcom/htc/reminderview/ui/ReminderView$ReminderTile;

    .line 49
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mTile:Lcom/htc/reminderview/ui/ReminderView$ReminderTile;

    if-nez v1, :cond_0

    .line 50
    const-string v1, "HtcTagReminderView"

    const-string v2, "initView Failed: tile"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mTile:Lcom/htc/reminderview/ui/ReminderView$ReminderTile;

    invoke-virtual {v1, v2}, Lcom/htc/reminderview/ui/ReminderView$ReminderTile;->setButtonAccessibilityEnabled(Z)V

    .line 55
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_2

    .line 57
    new-instance v1, Lcom/htc/reminderview/drag/BaseTile$Button;

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mTile:Lcom/htc/reminderview/ui/ReminderView$ReminderTile;

    invoke-direct {v1, v2}, Lcom/htc/reminderview/drag/BaseTile$Button;-><init>(Lcom/htc/reminderview/drag/BaseTile;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mDismiss:Lcom/htc/reminderview/drag/BaseTile$Button;

    .line 58
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mDismiss:Lcom/htc/reminderview/drag/BaseTile$Button;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mDismiss:Lcom/htc/reminderview/drag/BaseTile$Button;

    const v2, 0x20402bc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/reminderview/drag/BaseTile$Button;->setTitle(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mDismiss:Lcom/htc/reminderview/drag/BaseTile$Button;

    const v2, 0x20800a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/reminderview/drag/BaseTile$Button;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_1
    new-instance v1, Lcom/htc/reminderview/drag/BaseTile$Button;

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mTile:Lcom/htc/reminderview/ui/ReminderView$ReminderTile;

    invoke-direct {v1, v2}, Lcom/htc/reminderview/drag/BaseTile$Button;-><init>(Lcom/htc/reminderview/drag/BaseTile;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mSetting:Lcom/htc/reminderview/drag/BaseTile$Button;

    .line 63
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mSetting:Lcom/htc/reminderview/drag/BaseTile$Button;

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mSetting:Lcom/htc/reminderview/drag/BaseTile$Button;

    const v2, 0x7f0c00aa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/reminderview/drag/BaseTile$Button;->setTitle(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mSetting:Lcom/htc/reminderview/drag/BaseTile$Button;

    const v2, 0x20800c3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/reminderview/drag/BaseTile$Button;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_2
    const v1, 0x7f0900ad

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcTagReminderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mTextView1:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f0900ae

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcTagReminderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mTextView2:Landroid/widget/TextView;

    .line 71
    const v1, 0x7f0900af

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcTagReminderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mTextView3:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcTagReminderView;->updateUI()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/htc/reminderview/ui/ReminderView;->cleanUp()V

    .line 77
    return-void
.end method

.method public getButton(I)Lcom/htc/reminderview/drag/BaseTile$Button;
    .locals 1
    .parameter "index"

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mDismiss:Lcom/htc/reminderview/drag/BaseTile$Button;

    .line 139
    :goto_0
    return-object v0

    .line 136
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mSetting:Lcom/htc/reminderview/drag/BaseTile$Button;

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonCount()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x2

    return v0
.end method

.method public onButtonDrop(Lcom/htc/reminderview/drag/BaseTile$Button;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/htc/reminderview/ui/ReminderView;->onButtonDrop(Lcom/htc/reminderview/drag/BaseTile$Button;)V

    .line 112
    if-eqz p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mDismiss:Lcom/htc/reminderview/drag/BaseTile$Button;

    if-ne p1, v0, :cond_2

    .line 115
    const-string v0, "HtcTagReminderView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onButtonDrop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mDismiss:Lcom/htc/reminderview/drag/BaseTile$Button;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mCallback:Lcom/android/settings/bluetooth/HtcTagReminderView$Callback;

    if-eqz v0, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mCallback:Lcom/android/settings/bluetooth/HtcTagReminderView$Callback;

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mSetting:Lcom/htc/reminderview/drag/BaseTile$Button;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/android/settings/bluetooth/HtcTagReminderView$Callback;->onButtonDrop(Z)V

    .line 123
    :cond_1
    return-void

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mSetting:Lcom/htc/reminderview/drag/BaseTile$Button;

    if-ne p1, v0, :cond_0

    .line 117
    const-string v0, "HtcTagReminderView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onButtonDrop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mSetting:Lcom/htc/reminderview/drag/BaseTile$Button;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onTileDrop(Lcom/htc/reminderview/ui/ReminderView$ReminderTile;)V
    .locals 2
    .parameter "tile"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/htc/reminderview/ui/ReminderView;->onTileDrop(Lcom/htc/reminderview/ui/ReminderView$ReminderTile;)V

    .line 99
    if-eqz p1, :cond_1

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcTagReminderView;->getTile(I)Lcom/htc/reminderview/ui/ReminderView$ReminderTile;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 102
    const-string v0, "HtcTagReminderView"

    const-string v1, "onTileDrop: main Tile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mCallback:Lcom/android/settings/bluetooth/HtcTagReminderView$Callback;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mCallback:Lcom/android/settings/bluetooth/HtcTagReminderView$Callback;

    invoke-interface {v0}, Lcom/android/settings/bluetooth/HtcTagReminderView$Callback;->onTileDrop()V

    .line 108
    :cond_1
    return-void
.end method

.method public setCallback(Lcom/android/settings/bluetooth/HtcTagReminderView$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mCallback:Lcom/android/settings/bluetooth/HtcTagReminderView$Callback;

    .line 151
    return-void
.end method

.method public setMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "line1"
    .parameter "line3"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/settings/bluetooth/HtcTagReminderView;->setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "line1"
    .parameter "line2"
    .parameter "line3"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mTextView1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mTextView3:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mTile:Lcom/htc/reminderview/ui/ReminderView$ReminderTile;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mTile:Lcom/htc/reminderview/ui/ReminderView$ReminderTile;

    invoke-virtual {v0}, Lcom/htc/reminderview/ui/ReminderView$ReminderTile;->resetStringForAccessibility()V

    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mTile:Lcom/htc/reminderview/ui/ReminderView$ReminderTile;

    invoke-virtual {v0, p1}, Lcom/htc/reminderview/ui/ReminderView$ReminderTile;->addStringForAccessibility(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mTile:Lcom/htc/reminderview/ui/ReminderView$ReminderTile;

    invoke-virtual {v0, p2}, Lcom/htc/reminderview/ui/ReminderView$ReminderTile;->addStringForAccessibility(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagReminderView;->mTile:Lcom/htc/reminderview/ui/ReminderView$ReminderTile;

    invoke-virtual {v0, p3}, Lcom/htc/reminderview/ui/ReminderView$ReminderTile;->addStringForAccessibility(Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method
