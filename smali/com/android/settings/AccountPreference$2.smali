.class Lcom/android/settings/AccountPreference$2;
.super Ljava/lang/Object;
.source "AccountPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccountPreference;->initPopupWindowIfNeeded(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccountPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/AccountPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/settings/AccountPreference$2;->this$0:Lcom/android/settings/AccountPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/AccountPreference$2;->this$0:Lcom/android/settings/AccountPreference;

    #getter for: Lcom/android/settings/AccountPreference;->mAdapter:Lcom/android/settings/AccountPreference$MenuAdapter;
    invoke-static {v0}, Lcom/android/settings/AccountPreference;->access$100(Lcom/android/settings/AccountPreference;)Lcom/android/settings/AccountPreference$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/AccountPreference$MenuAdapter;->onItemClick(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings/AccountPreference$2;->this$0:Lcom/android/settings/AccountPreference;

    #getter for: Lcom/android/settings/AccountPreference;->mPopupMenu:Lcom/htc/widget/ListPopupBubbleWindow;
    invoke-static {v0}, Lcom/android/settings/AccountPreference;->access$200(Lcom/android/settings/AccountPreference;)Lcom/htc/widget/ListPopupBubbleWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 202
    :cond_0
    return-void
.end method
