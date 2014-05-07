.class Lcom/android/settings/framework/app/HtcInternalPreferenceActivity$2;
.super Ljava/lang/Object;
.source "HtcInternalPreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->initBackUpSettings(Lcom/htc/widget/ActionBarContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity$2;->this$0:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity$2;->this$0:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity$2;->this$0:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
