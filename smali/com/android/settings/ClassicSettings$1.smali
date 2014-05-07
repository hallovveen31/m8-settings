.class Lcom/android/settings/ClassicSettings$1;
.super Ljava/lang/Object;
.source "ClassicSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ClassicSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ClassicSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ClassicSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings/ClassicSettings$1;->this$0:Lcom/android/settings/ClassicSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/ClassicSettings$1;->this$0:Lcom/android/settings/ClassicSettings;

    iget-object v1, p0, Lcom/android/settings/ClassicSettings$1;->this$0:Lcom/android/settings/ClassicSettings;

    #getter for: Lcom/android/settings/ClassicSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/ClassicSettings;->access$000(Lcom/android/settings/ClassicSettings;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #calls: Lcom/android/settings/ClassicSettings;->switchToParent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/ClassicSettings;->access$100(Lcom/android/settings/ClassicSettings;Ljava/lang/String;)V

    .line 180
    return-void
.end method
