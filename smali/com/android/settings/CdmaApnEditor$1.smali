.class Lcom/android/settings/CdmaApnEditor$1;
.super Ljava/lang/Object;
.source "CdmaApnEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CdmaApnEditor;->initBackUpSettings(Lcom/htc/widget/ActionBarContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CdmaApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/CdmaApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/android/settings/CdmaApnEditor$1;->this$0:Lcom/android/settings/CdmaApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/settings/CdmaApnEditor$1;->this$0:Lcom/android/settings/CdmaApnEditor;

    #calls: Lcom/android/settings/CdmaApnEditor;->backKeyEvent()Z
    invoke-static {v0}, Lcom/android/settings/CdmaApnEditor;->access$000(Lcom/android/settings/CdmaApnEditor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1252
    iget-object v0, p0, Lcom/android/settings/CdmaApnEditor$1;->this$0:Lcom/android/settings/CdmaApnEditor;

    #getter for: Lcom/android/settings/CdmaApnEditor;->mSave:Z
    invoke-static {v0}, Lcom/android/settings/CdmaApnEditor;->access$100(Lcom/android/settings/CdmaApnEditor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CdmaApnEditor$1;->this$0:Lcom/android/settings/CdmaApnEditor;

    #getter for: Lcom/android/settings/CdmaApnEditor;->mEditable:Z
    invoke-static {v0}, Lcom/android/settings/CdmaApnEditor;->access$200(Lcom/android/settings/CdmaApnEditor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CdmaApnEditor$1;->this$0:Lcom/android/settings/CdmaApnEditor;

    invoke-virtual {v0}, Lcom/android/settings/CdmaApnEditor;->finish()V

    .line 1256
    :cond_1
    return-void
.end method
