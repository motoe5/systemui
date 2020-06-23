.class Landroid/support/v7/app/MediaRouteButton$1;
.super Landroid/os/AsyncTask;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteButton;

.field final synthetic val$value:Landroid/util/TypedValue;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteButton;Landroid/util/TypedValue;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/MediaRouteButton;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton$1;->this$0:Landroid/support/v7/app/MediaRouteButton;

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteButton$1;->val$value:Landroid/util/TypedValue;

    .line 135
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$1;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton$1;->val$value:Landroid/util/TypedValue;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteButton$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$1;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 141
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteButton$1;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
