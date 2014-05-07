.class Lcom/android/settings/AccountPreference$3;
.super Ljava/lang/Object;
.source "AccountPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccountPreference;->enlargeButtonTouchWidth(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccountPreference;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/AccountPreference;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AccountPreference$3;->this$0:Lcom/android/settings/AccountPreference;

    iput-object p2, p0, Lcom/android/settings/AccountPreference$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v3, p0, Lcom/android/settings/AccountPreference$3;->val$view:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/settings/AccountPreference$3;->this$0:Lcom/android/settings/AccountPreference;

    iget-object v3, p0, Lcom/android/settings/AccountPreference$3;->val$view:Landroid/view/View;

    check-cast v3, Lcom/htc/widget/HtcImageButton;

    #calls: Lcom/android/settings/AccountPreference;->countButtonEnlargeDimen(Lcom/htc/widget/HtcImageButton;)I
    invoke-static {v4, v3}, Lcom/android/settings/AccountPreference;->access$300(Lcom/android/settings/AccountPreference;Lcom/htc/widget/HtcImageButton;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/settings/AccountPreference$3;->val$view:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/android/settings/AccountPreference$3;->val$view:Landroid/view/View;

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/settings/AccountPreference$3;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/AccountPreference$3;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/AccountPreference$3;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    return-void
.end method
