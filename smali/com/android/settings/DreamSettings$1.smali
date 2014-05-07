.class Lcom/android/settings/DreamSettings$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 205
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    #getter for: Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;
    invoke-static {v1}, Lcom/android/settings/DreamSettings;->access$100(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 209
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DreamBackend$DreamInfo;

    .line 210
    .local v0, info:Lcom/android/settings/DreamBackend$DreamInfo;
    iget-object v1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    #getter for: Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;
    invoke-static {v1}, Lcom/android/settings/DreamSettings;->access$100(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->activate(Lcom/android/settings/DreamBackend$DreamInfo;)V

    goto :goto_0
.end method
