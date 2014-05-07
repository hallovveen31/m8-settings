.class Lcom/android/settings/framework/search/SuggestionProvider$1;
.super Ljava/lang/Object;
.source "SuggestionProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/search/SuggestionProvider;->loadResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/search/SuggestionProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/search/SuggestionProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/framework/search/SuggestionProvider$1;->this$0:Lcom/android/settings/framework/search/SuggestionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/framework/search/SuggestionProvider$1;->this$0:Lcom/android/settings/framework/search/SuggestionProvider;

    invoke-virtual {v0}, Lcom/android/settings/framework/search/SuggestionProvider;->loadResourcesInBackground()V

    .line 119
    return-void
.end method
