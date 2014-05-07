.class Lcom/android/settings/ApnEditor$1;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnEditor;->initBackUpSettings(Lcom/htc/widget/ActionBarContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    #calls: Lcom/android/settings/ApnEditor;->backKeyEvent()Z
    invoke-static {v0}, Lcom/android/settings/ApnEditor;->access$000(Lcom/android/settings/ApnEditor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1777
    iget-object v0, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    #getter for: Lcom/android/settings/ApnEditor;->mSave:Z
    invoke-static {v0}, Lcom/android/settings/ApnEditor;->access$100(Lcom/android/settings/ApnEditor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    #getter for: Lcom/android/settings/ApnEditor;->mEditable:Z
    invoke-static {v0}, Lcom/android/settings/ApnEditor;->access$200(Lcom/android/settings/ApnEditor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1778
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    invoke-virtual {v0}, Lcom/android/settings/ApnEditor;->finish()V

    .line 1781
    :cond_1
    return-void
.end method
