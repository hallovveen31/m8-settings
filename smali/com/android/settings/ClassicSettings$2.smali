.class Lcom/android/settings/ClassicSettings$2;
.super Ljava/lang/Object;
.source "ClassicSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ClassicSettings;->onResume()V
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

    iput-object p1, p0, Lcom/android/settings/ClassicSettings$2;->this$0:Lcom/android/settings/ClassicSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ClassicSettings$2;->this$0:Lcom/android/settings/ClassicSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    return-void
.end method
