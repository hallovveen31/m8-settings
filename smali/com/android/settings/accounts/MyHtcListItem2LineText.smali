.class public Lcom/android/settings/accounts/MyHtcListItem2LineText;
.super Lcom/htc/widget/HtcListItem2LineText;
.source "MyHtcListItem2LineText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItem2LineText;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;I)V

    .line 53
    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItem2LineText;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItem2LineText;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItem2LineText;->init()V

    .line 43
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 15
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/MyHtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 16
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/MyHtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 18
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/MyHtcListItem2LineText;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 19
    .local v1, v:Landroid/view/View;
    const/4 v0, 0x0

    .line 20
    .local v0, tv:Landroid/widget/TextView;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 22
    if-eqz v0, :cond_0

    .line 23
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 28
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/MyHtcListItem2LineText;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 29
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    if-eqz v0, :cond_1

    .line 32
    const v2, 0x1020010

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 36
    :cond_1
    return-void
.end method
