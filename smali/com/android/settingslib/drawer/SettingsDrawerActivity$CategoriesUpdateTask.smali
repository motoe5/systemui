.class Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;
.super Landroid/os/AsyncTask;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoriesUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

.field final synthetic this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 209
    invoke-static {p1}, Lcom/android/settingslib/drawer/CategoryManager;->get(Landroid/content/Context;)Lcom/android/settingslib/drawer/CategoryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    .line 210
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getSettingPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/drawer/CategoryManager;->reloadAllCategories(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 218
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    invoke-static {}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->-get0()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/CategoryManager;->updateCategoryFromBlacklist(Ljava/util/Set;)V

    .line 221
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-static {v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->-wrap0(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V

    .line 222
    return-void
.end method